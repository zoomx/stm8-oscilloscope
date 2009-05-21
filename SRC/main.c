/**
  ******************************************************************************
  * @file stmdso\main.c
  * @brief This file contains the firmware main function.
  * @author ifree64  leexiaofeng@gmail.com
  * @version V0.1
  * @date 04/11/2009
  ******************************************************************************
  */

#include "stm8s.h"
#include "main.h"
#include "key.h"
#include "keyparse.h"
#include "dataprocess.h"
#include "lcd_19264.h"
#include "wavedraw.h"
#include "adc.h"

volatile u8 TriggerVoltage;         

volatile u8 flag_10ms_ok;
@near u8 ADC_Buffer[ADC_BUFFER_SIZE];
volatile u16 ADC_Index;
volatile enum STMDSO_State SystemState;
volatile enum ADC_State ADCState;

// 返回0，没有找到; 当有硬件触发后，删除该函数
u16 GetTriggerPostion(u16 start, u8 tigvol)
{
        while( start < ADC_BUFFER_SIZE )
        {
            if( ADC_Buffer[start] < tigvol && ADC_Buffer[start+1] >= tigvol )
                return start;
            else
                start++;
        }
        return 0;
}

void CLK_Init(void)
{    
    /* Configure clock prescaler */
    CLK->CKDIVR = 0x00;          /* To be programmed with different value */
                                 /* Fmaster, Fmaster/1, ...               */
    /* To select external source by automtic switch */
    CLK->SWCR |= 0x02;            /* Enable switch */
    CLK->SWR   = 0xB4;            /* Select HSE */
		
    while (!(CLK->SWCR & 0x08));  /* Wait for switch done */
		
		/* verify the external clock is selected (optional) */
    if (CLK->CMSR != 0xB4)        
		    while(1);
    
    CLK->CSSR |= 0x01; 
}

void TIM4_Init(void)
{
    TIM4_DeInit();
    
    // 24000000/128/1000 = 187.5
    
    /* Time base configuration */ 
    TIM4_TimeBaseInit(TIM4_PRESCALER_128, FMASTER/128/1000);    // 1ms中断
    TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
    TIM4_Cmd(ENABLE);
}

void TriggerInterruptInit(void)
{
    // to do...
}

void main(void)
{
    u16 trigpos;
    u8 keycode;
    
    SystemState = AutoRunMode;
    // 现在还是使用软件触发
	  ADCState = Triggered;       // ADCState = WaitTrigger;

    CLK_Init();                 // 主时钟初始化
    TIM4_Init();                // TIM4 用于产生系统运行需要的定时信号
    KEY_Init();                 // 按键驱动初始化
    KeyParse_Init();            // 按键处理模块初始化
    LCD_Init();                 // LCD驱动初始化
    WDraw_Init();               // 波形显示模块初始化
    TriggerInterruptInit();     // 外部触发中断初始化
    ADC_Init();                 // ADC采样程控模块初始化
    DProc_Init();               // 数据处理模块初始化
  

    enableInterrupts();

    /* Infinite loop */
    while (1)
    {
    
				if(flag_10ms_ok)
        {
            flag_10ms_ok = 0;
            keycode = KEY_Scan();
						switch(GET_KTYPE(keycode))
            {
                case KTYPE_NORMAL:
                    KeyParse(GET_KCODE(keycode));
                default:
                    break;
            }
        }
        switch(SystemState)
        {
            // to do
            case AutoRunMode:
            case ManualMode:
                //  处理数据
                if( ADCState == ADC_Buffer_Full )
                {
                    trigpos = GetTriggerPostion(0, 64);
                    WDraw_DisplayUpdate(&ADC_Buffer[trigpos]);
                    ADCState = Triggered;
                    ADC_Index = 0;
                }
                break;
            default:
                break;
        }
		
		}
  
}

void DSO_ModeChange()
{
    switch(SystemState){
        case StopMode:
            SystemState = AutoRunMode;
            break;
        case AutoRunMode:
            SystemState = ManualMode;
            break;
        case ManualMode:
            SystemState = StopMode;
            break;
        default:
            break;
    }
    
}
void DSO_RunStop(void)
{
    if(ADCState != STOP)
    {
        ADCState = STOP;
        SystemState = StopMode;
    }
    else
    {
        SystemState = AutoRunMode;
        ADCState = WaitTrigger;
    }
}
            
            
/**
  * @brief Reports the name of the source file and the source line number where
  * the assert error has occurred.
  * User can add his own implementation to report the file name and line number.
  * ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line)
  * @retval void None
  * @par Required preconditions:
  * None
  * @par Called functions:
  * None
  */
#ifdef FULL_ASSERT
void assert_failed(u8 *file, u16 line)
#else
void assert_failed(void)
#endif
{
  /* Add your own code to manage an assert error */
  /* Infinite loop */
  while (1)
  {
  }
}

/******************* (C) COPYRIGHT 2009 STM8DSO TEAM *****END OF FILE****/
