#include "lcd_19264.h"
#include "delay.h"
#include "ascii_5x8.h"

static u8 dirty;
@near volatile static u8 DisplayBuffer[8][192];

#define DELAY_US(x)     do{u8 y=x; while(y--) _asm("nop\n");}while(0)

void LCD_WriteCommand(u8 cmd, u8 ChipSel)
{
    disableInterrupts();
    LCD_RW_L();
    LCD_RS_L(); // Command Signal
    LCD_SET_CS_SIGNAL(ChipSel);

    LCD_E_H();
	LCD_SET_DATA(cmd);
    
    DELAY_US(100);
    
	LCD_E_L();
    enableInterrupts();

}

void LCD_WriteData(u8 Data, u8 ChipSel)
{
    disableInterrupts();
	// LCD_E_L();	
	LCD_RW_L();
    LCD_RS_H(); // Data Signal
    LCD_SET_CS_SIGNAL(ChipSel);
	
    LCD_E_H();

	LCD_SET_DATA(Data);
    
    DELAY_US(5);

	LCD_E_L();
    enableInterrupts();
}

u8 LCD_ReadData(void)
{
	u8 rData;

	LCD_E_L();
	LCD_RW_H();
    
    LCD_CSA_L();
    LCD_CSB_L();
	
	LCD_RS_H();

	LCD_E_H();
	delay_us(1);
	
	LCD_DATA_INPUT_MODE();
	rData = LCD_READ_DATA();
	LCD_DATA_OUTPUT_MODE();

	LCD_RW_L();
	LCD_E_H();
	LCD_CSA_H();
	LCD_CSB_H();

	return rData;

}

u8 LCD_ReadCommand(void)
{
	u8 rData;

	LCD_E_L();
	LCD_RW_H();

	LCD_CSA_L();
	LCD_CSB_L();
	
	LCD_RS_L();

	LCD_E_H();
	delay_us(1);

	LCD_DATA_INPUT_MODE();
	rData = LCD_READ_DATA();
	LCD_DATA_OUTPUT_MODE();

	LCD_RW_L();
	LCD_E_H();
	LCD_CSA_H();
	LCD_CSB_H();

	return rData;

}

void LCD_Init(void)
{

    LCD_DATA_OUTPUT_MODE();
    LCD_CONTROL_OUTPUT_MODE();
    LCD_CS_OUTPUT_MODE();
    LCD_RES_OUTPUT_MODE();
		LCD_BL_OUTPUT_MODE();
    LCD_RES_H();
		LCD_BL_H();
    
    LCD_WriteCommand(LCD_DISPLAY_ON, LCD_LEFT);
    LCD_WriteCommand(LCD_DISPLAY_ON, LCD_MID);
    LCD_WriteCommand(LCD_DISPLAY_ON, LCD_RIGHT);
    LCD_WriteCommand(LCD_START_LINE+0, LCD_LEFT);
    
}

void LCD_BufferDrawPixel(u8 x, u8 y, DrawMode mode)
{
	char DX = (y >> 3);                 // ËÆ°ÁÆóÂá∫Â±û‰∫éÂì™‰∏™Â≠óËäÇ 
	char BX = (y & 0x07);               // ËÆ°ÁÆóÂá∫Â±û‰∫éÂ≠óËäÇÂì™‰∏Ä‰Ωç 
    u8 temp = (1<<BX);

	switch(mode){
		case LCD_CLEAR:
			DisplayBuffer[DX][x] &= ~(1<<BX);
			break;
		case LCD_NOT:
			DisplayBuffer[DX][x] ^= (1<<BX);
			break;
		case LCD_SET:
			DisplayBuffer[DX][x] |= (1<<BX);
			break;
		default:
			break;
	}
    dirty = 1;
/*
    u8 chip;
    if( x < 64)
        chip = LCD_LEFT;
    else if( x < 128 )
        chip = LCD_MID;
    else
        chip = LCD_RIGHT;
        
    LCD_WriteCommand( LCD_XPAGE_BASE+DX, chip);
    LCD_WriteCommand( LCD_YADDR_BASE+(x%64), chip);
    LCD_WriteData(temp, chip);
*/    
}

// (x,y) Start Point
static void LCD_BufferDrawXLine(u8 x, u8 y, u8 len, DrawMode mode)
{
	u8 DX = (y >> 3);
	u8 BX = (y & 0x07);
	u8 mask = (1 << BX);
	u8 nmask = ~mask;
	u8 i;
	for( i = 0; i < len; ++i,++x)
		switch(mode){
		case LCD_CLEAR:
			DisplayBuffer[DX][x] &= nmask;
			break;
		case LCD_NOT:
			DisplayBuffer[DX][x] ^= mask;
			break;
		case LCD_SET:
			DisplayBuffer[DX][x] |= mask;
			break;
		default:
			break;
	}
	
}

// (x,y) Start Point
void LCD_BufferDrawXDotLine(u8 x, u8 y, u8 len, DrawMode mode)
{
	u8 DX = (y >> 3);
	u8 BX = (y & 0x07);
	u8 mask = (1 << BX);
	u8 nmask = ~mask;
	u8 i;
	for( i = 0; i < len; i+=2,x+=2)
		switch(mode){
		case LCD_CLEAR:
			DisplayBuffer[DX][x] &= nmask;
			break;
		case LCD_NOT:
			DisplayBuffer[DX][x] ^= mask;
			break;
		case LCD_SET:
			DisplayBuffer[DX][x] |= mask;
			break;
		default:
			break;
	}
	
}

// (x,y) Start Point
static void LCD_BufferDrawYLine(u8 x, u8 y, u8 len, DrawMode mode)
{
	u8 DX = (y >> 3);
	u8 BX = (y & 0x07);
	switch(mode){
		case LCD_CLEAR:
			DisplayBuffer[DX][x] &= ~(0xff << BX);
			break;
		case LCD_NOT:
			DisplayBuffer[DX][x] ^= (0xff << BX);
			break;
		case LCD_SET:
			DisplayBuffer[DX][x] |= (0xff << BX);
			break;
		default:
			break;
	}
	DX++;
	len -= (8-BX);
	while( len >= 8 )
	{
		switch(mode){
			case LCD_CLEAR:
				DisplayBuffer[DX][x] &= 0;
				break;
			case LCD_NOT:
				DisplayBuffer[DX][x] ^= 0xff;
				break;
			case LCD_SET:
				DisplayBuffer[DX][x] |= 0xff;
				break;
			default:
				break;
		}
		DX++;
		len -= 8;
	}
	if(len)
	{
		switch(mode){
			case LCD_CLEAR:
				DisplayBuffer[DX][x] &= (0xff << len);
				break;
			case LCD_NOT:
				DisplayBuffer[DX][x] ^= ~(0xff << len);
				break;
			case LCD_SET:
				DisplayBuffer[DX][x] |= ~(0xff << len);
				break;
			default:
				break;
		}
	}
}

void LCD_BufferDrawYDotLine(u8 x, u8 y, u8 len, DrawMode mode)
{
	u8 DX = (y >> 3);
	u8 BX = (y & 0x07);
	switch(mode){
		case LCD_CLEAR:
			DisplayBuffer[DX][x] &= ~(0xff << BX)&0xaa;
			break;
		case LCD_NOT:
			DisplayBuffer[DX][x] ^= (0xff << BX)&0x55;
			break;
		case LCD_SET:
			DisplayBuffer[DX][x] |= (0xff << BX)&0x55;
			break;
		default:
			break;
	}
	DX++;
	len -= (8-BX);
	while( len >= 8 )
	{
		switch(mode){
			case LCD_CLEAR:
				DisplayBuffer[DX][x] &= 0xaa;
				break;
			case LCD_NOT:
				DisplayBuffer[DX][x] ^= 0x55;
				break;
			case LCD_SET:
				DisplayBuffer[DX][x] |= 0x55;
				break;
			default:
				break;
		}
		DX++;
		len -= 8;
	}
	if(len)
	{
		switch(mode){
			case LCD_CLEAR:
				DisplayBuffer[DX][x] &= (0xff << len)&0xaa;
				break;
			case LCD_NOT:
				DisplayBuffer[DX][x] ^= ~(0xff << len)&0x55;
				break;
			case LCD_SET:
				DisplayBuffer[DX][x] |= ~(0xff << len)&0x55;
				break;
			default:
				break;
		}
	}
}

#define abs(x) ((x>0)?(x):(-(x)))

void LCD_BufferDrawLine(u8 x1, u8 y1, u8 x2, u8 y2, DrawMode mode)
{
	u8 x, y, t;
	int dx, dy, d, incrE, incrNE;
	if( y1 > y2)
	{
		t = x1, x1 = x2, x2 = t;
		t = y1, y1 = y2, y2 = t;
	}
	dx = x2 - x1;
	dy = y2 - y1;
	x = x1, y = y1;
	if( 0 == dx )
	{
			LCD_BufferDrawYLine(x1, y1, dy, mode);
	}
	else if( 0 == dy )
	{
			if( x1 > x2 )
				LCD_BufferDrawXLine(x2, y2, dx, mode);
			else
				LCD_BufferDrawXLine(x1, y1, dx, mode);
	}
	else
	{
		// Bresenham Midpoint Line
		if( abs(dx) > abs(dy) )
		{	
			if( x2 > x1)
			{
				// 0 < k < 1
				d = 2 * dy - dx;
				incrE = 2 * dy;
				incrNE = 2 * (dy - dx);
				while( x < x2 )
				{
					LCD_BufferDrawPixel(x, y, mode);
					x++;
					if( d > 0 )
					{
						y++;
						d += incrNE;
					}
					else
						d += incrE;
				}
				LCD_BufferDrawPixel(x, y, mode);
			}
			else
			{
				// -1 < k < 0
				d = -2 * dy - dx;
				incrE = -2 * dy;
				incrNE = -2 * (dy + dx);
				while( x > x2)
				{
					LCD_BufferDrawPixel(x, y, mode);
					x--;
					if( d < 0 )
					{
						y++;
						d += incrNE;
					}
					else
						d += incrE;
				}
				LCD_BufferDrawPixel(x, y, mode);			
			}
		}
		else
		{	
			if( x2 > x1)
			{
				// k > 1
				d = dy - 2 * dx;
				incrE = -2 * dx;
				incrNE = 2 * (dy - dx);
				while( y < y2 )
				{
					LCD_BufferDrawPixel(x, y, mode);
					y++;
					if( d < 0 )	
					{
						x++;
						d += incrNE;
					}
					else
						d += incrE;
				}
				LCD_BufferDrawPixel(x, y, mode);
			}
			else
			{
				// k < -1
				d = -dy - 2 * dx;
				incrE = -2 * dx;
				incrNE = -2 * (dy + dx);
				while( y < y2 )
				{
					LCD_BufferDrawPixel(x, y, mode);
					y++;
					if( d > 0 )
					{
						x--;
						d += incrNE;
					}
					else
						d += incrE;
				}
				LCD_BufferDrawPixel(x, y, mode);
			}
		}
	}
    dirty = 1;
}

void LCD_BufferToLCD(void)
{
	u8 chip, x, y, i, j;
    
    u8 AddX, AddY;
    
    if( dirty == 0)
        return;
    
    for(chip = 0, j = 0; chip < 3; ++chip, j+=64)
    {
        AddX = LCD_XPAGE_BASE;
        AddY = LCD_YADDR_BASE;
        LCD_WriteCommand(LCD_DISPLAY_ON, chip);
        LCD_WriteCommand(LCD_START_LINE, chip);
        for( x = 0; x < 8; ++x )
        {
            LCD_WriteCommand(AddX, chip);
            LCD_WriteCommand(AddY, chip);
            for( y = 0; y < 64; ++y )
            {
                LCD_WriteData(DisplayBuffer[x][y+j], chip);
            }
            AddX++;
        }
    }
    dirty = 0;
}

void LCD_Clear(void)
{
	u8 i, j;
	for( i = 0; i < 8; ++i )
	{
        for(j = 0; j < 192; ++j)
            DisplayBuffer[i][j] = 0;
    }
    dirty = 1;
}

//  –¥Œƒ±æƒ£ Ωœ¬µƒ––°¢¡–µÿ÷∑  
static void LCD_GoTextXY(u8 x, u8 y)
{ 
    u8 chip;
    u8 tmp = x * 6;
    if(tmp > 192) tmp=0;       // »Áπ˚¡–µÿ÷∑≥¨≥ˆ∑∂ŒßæÕªÿµΩ0¡–  
    if(y > 8) y=0;             // »Áπ˚––µÿ÷∑≥¨≥ˆ∑∂ŒßæÕªÿµΩ0––  
    if( tmp < 64 )
    {
        chip = LCD_LEFT;
    }
    else if( tmp < 128 )
    {
        chip = LCD_MID;
        tmp -= 64;
    }else
    {
        chip = LCD_RIGHT;
        tmp -= 128;
    }
    LCD_WriteCommand(LCD_XPAGE_BASE+y, chip);
    LCD_WriteCommand(LCD_YADDR_BASE+tmp, chip);
} 
    
// Œƒ±æƒ£ Ωœ¬x£∫0~31£¨y£∫0~7£¨√ø∏ˆ◊÷∑˚÷Æº‰ø’“ª¡–6X8
void LCD_PutChar5x8(u8 x, u8 y, unsigned char ASCII)
{
    u8 i;  
    u16 No; 
    u8 tmp = x * 6;                // “ª∏ˆ◊÷∑˚’º”√∆¡ƒª6 ¡–            
    No = ASCII - 32;               // ◊÷ƒ£ ˝æ› «”…ø’∏Ò°Ø °Ø ø™ º£¨ø’∏ÒµƒASCIIµƒ÷µæÕ «32  
    No = No * 5;                   // √ø∏ˆ◊÷∑˚µƒ◊÷ƒ£ «5 ∏ˆ◊÷Ω⁄ 
    
    for(i = 0; i < 5; ++i)         // “ª∏ˆ◊÷∑˚µƒ◊÷ƒ£ «5 ∏ˆ◊÷Ω⁄,æÕ «5*8µ„’Û  
    {  
        DisplayBuffer[y][tmp++] = cAscii5x8Bitmap[No++]; 
    }  
    dirty = 1;
}    

void LCD_PutString5x8(u8 x, u8 y, unsigned char *str)
{
    while(*str)
    {
        LCD_PutChar5x8(x++, y, *str++);
    }
}