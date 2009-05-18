/**
  ******************************************************************************
  * @file stmdso\wavedraw.c
  * @brief 本文件包含波形显示控制功能.
  * @author ifree64  leexiaofeng@gmail.com
  * @version V0.1
  * @date 04/11/2009
  ******************************************************************************
  */
  
#include "stm8s.h"
#include "wavedraw.h"
#include "main.h"
#include "lcd_19264.h"

static void WDraw_DrawInterface(void)
{
    u8 i;
    LCD_Clear();
    for(i = 0; i < 64; i+=16)
        LCD_BufferDrawXDotLine(0, i, 128, LCD_SET);
    for(i = 0; i <129; i+=16)
        LCD_BufferDrawYDotLine(i, 0, 63, LCD_SET);
}

void WDraw_Init(void)
{
	WDraw_DrawInterface();
    
}

void WDraw_DisplayUpdate(@near u8 *pWaveData)
{
    u8 j;
    LCD_Clear();
    WDraw_DrawInterface();
    
    for( j = 0 ; j < 160 ; ++j )
        LCD_BufferDrawLine(j, pWaveData[j], j+1, pWaveData[j+1], LCD_SET); 
}

void WDraw_DisplayUp(void)
{

}

void WDraw_DisplayDown(void)
{
    
}

void WDraw_DisplayLeft(void)
{
    
}

void WDraw_DisplayRight(void)
{
    
}

void WDraw_SetCH1TimeBaseInfo(unsigned char *tbinfo)
{
    
}

void WDraw_SetCH1GainInfo(unsigned char *gainInfo)
{
    
}

/******************* (C) COPYRIGHT 2009 STM8DSO TEAM *****END OF FILE****/