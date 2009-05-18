/**
  ******************************************************************************
  * @file stmdso\main.c
  * @brief This file contains the firmware main function.
  * @author ifree64  leexiaofeng@gmail.com
  * @version V0.1
  * @date 04/11/2009
  ******************************************************************************
  */

#ifndef __ADC_STMDSO_H_
#define __ADC_STMDSO_H_

extern void ADC_Init(void);
extern void ADC_GainAdd(void);
extern void ADC_GainSub(void);
extern void ADC_TimeBaseAdd(void);
extern void ADC_TimeBaseSub(void);
extern void ADC_TriggerVoltageAdd(void);
extern void ADC_TriggerVoltageSub(void);

#endif /* __ADC_STMDSO_H_*/

/******************* (C) COPYRIGHT 2009 STM8DSO TEAM *****END OF FILE****/
