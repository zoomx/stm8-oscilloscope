/**
  ******************************************************************************
  * @file stmdso\adc.c
  * @brief  本文件实现ADC采样率和程控放大控制功能
  * @author ifree64  leexiaofeng@gmail.com
  * @version V0.1
  * @date 04/11/2009
  ******************************************************************************
  */
  
#include "stm8s.h"
#include "adc.h"
#include "main.h"

#define TIM1_200K_ARR   (FMASTER/200000UL - 1)

static void TIM1_Init(void)
{
    TIM1_DeInit();
	/* Time base configuration */
    /*
	    TIM1_Period = TIM1_200K_ARR
        TIM1_Prescaler = 0
	    TIM1_RepetitionCounter=0
    */
      
    TIM1_TimeBaseInit(0, TIM1_COUNTERMODE_UP, TIM1_200K_ARR, 0);
	
    /* Configure the TIM1 Master/Slave mode */
    TIM1_SelectMasterSlaveMode(ENABLE);
    /* Trigger the conversion */
    TIM1_SelectOutputTrigger(TIM1_TRGOSOURCE_UPDATE);
    TIM1_Cmd(ENABLE);
}

void ADC_Init(void)
{
    TIM1_Init();
    /*  Init GPIO for ADC2 */
    GPIO_Init(GPIOE, GPIO_PIN_6, GPIO_MODE_IN_FL_NO_IT);

    ADC2_DeInit();

    ADC2_Init( ADC2_CONVERSIONMODE_SINGLE,
               ADC2_CHANNEL_9,
               ADC2_PRESSEL_FCPU_D4,
               ADC2_EXTTRIG_TIM,
               ENABLE,
               ADC2_ALIGN_LEFT,
               ADC2_SCHMITTTRIG_CHANNEL9,
               DISABLE             /* SchmittTrigger Disable */
              );

    /* Enable the ADC2 peripheral */
    ADC2_Cmd(ENABLE);

    /* Enable EOC interrupt */
    ADC2_ITConfig(ENABLE);
    
    /*Configure the ADC2 external trigger */
    ADC2_ExternalTriggerConfig(ADC2_EXTTRIG_TIM, ENABLE);
}

extern void ADC_GainAdd(void)
{
    
}

void ADC_GainSub(void)
{
    
}

void ADC_TimeBaseAdd(void)
{
    
}

void ADC_TimeBaseSub(void)
{
    
}

void ADC_TriggerVoltageAdd(void)
{
    
}

void ADC_TriggerVoltageSub(void)
{
    
}

/******************* (C) COPYRIGHT 2009 STM8DSO TEAM *****END OF FILE****/