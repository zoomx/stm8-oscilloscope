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

void KeyParse_Init(void)
{
    
}

void KeyParse(u8 kcode)
{
    switch(kcode)
    {
        case KEY_UP:
            WDraw_DisplayUp();
            break;
        case KEY_DOWN:
            WDraw_DisplayDown();
            break;
        case KEY_LEFT:
            WDraw_DisplayLeft();
            break;
        case KEY_RIGHT:
            WDraw_DisplayRight();
            break;
        case KEY_TRIGUP:
            ADC_TriggerVoltageAdd();
            break;
        case KEY_TRIGDOWN:
            ADC_TriggerVoltageSub();
            break;
        case KEY_GAINUP:
            ADC_GainAdd();
            break;
        case KEY_GAINDOWN:
            ADC_GainSub();
            break;
        case KEY_TBUP:
            ADC_TimeBaseAdd();
            break;
        case KEY_TBDOWN:
            ADC_TimeBaseSub();
            break;
        case KEY_MODE:
            DSO_ModeChange();
            break;
        case KEY_RUNSTOP:
            DSO_RunStop();
            break;
        default:
            break;
    }
}
