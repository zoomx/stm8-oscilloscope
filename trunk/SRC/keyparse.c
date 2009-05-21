/**
  ******************************************************************************
  * @file stmdso\keyparse.c
  * @brief 本文件实现采样数据的处理。
  * @author ifree64  leexiaofeng@gmail.com
  * @version V0.1
  * @date 04/11/2009
  ******************************************************************************
 **/

#include "stm8s.h"
#include "keyparse.h"
#include "adc.h"
#include "wavedraw.h"
#include "main.h"

#include "lcd_19264.h"

void KeyParse_Init(void)
{
    
}

void KeyParse(u8 kcode)
{
    switch(kcode)
    {
        case KEY_UP:
						LCD_PutString5x8(22,0, "Up");
            WDraw_DisplayUp();
            break;
        case KEY_DOWN:
						LCD_PutString5x8(22,0,"Down");
            WDraw_DisplayDown();
            break;
        case KEY_LEFT:
						LCD_PutString5x8(22,0,"Left");
            WDraw_DisplayLeft();
            break;
        case KEY_RIGHT:
						LCD_PutString5x8(22,0,"Right");
            WDraw_DisplayRight();
            break;
        case KEY_TRIGUP:
						LCD_PutString5x8(22,0,"Trigup");
            ADC_TriggerVoltageAdd();
            break;
        case KEY_TRIGDOWN:
						LCD_PutString5x8(22,0,"Trigdown");
            ADC_TriggerVoltageSub();
            break;
        case KEY_GAINUP:
         		LCD_PutString5x8(22,0,"Gainup");
            ADC_GainAdd();
            break;
        case KEY_GAINDOWN:
						LCD_PutString5x8(22,0,"Gaindown");
            ADC_GainSub();
            break;
        case KEY_TBUP:
				    LCD_PutString5x8(22,0,"Tbup");
            ADC_TimeBaseAdd();
            break;
        case KEY_TBDOWN:
						LCD_PutString5x8(22,0,"Tbdown");
            ADC_TimeBaseSub();
            break;
        case KEY_MODE:
				    LCD_PutString5x8(22,0,"Mode");
            DSO_ModeChange();
            break;
        case KEY_RUNSTOP:
				    LCD_PutString5x8(22,0,"RunStop");
            DSO_RunStop();
            break;
        default:
            break;
    }
		LCD_BufferToLCD();
}
