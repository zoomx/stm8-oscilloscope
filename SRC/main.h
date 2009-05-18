#ifndef __MAIN_STMDSO_H
#define __MAIN_STMDSO_H

enum STMDSO_State{
    StopMode,
    AutoRunMode,
    ManualMode
};

enum ADC_State{
    STOP = 0,
    WaitTrigger,
    Triggered,
    ADC_Buffer_Full
};

#define FCPU                (24000000UL)
#define FMASTER             (FCPU)
#define ADC_BUFFER_SIZE     160*2

extern volatile u8 flag_10ms_ok;
extern @near u8 ADC_Buffer[ADC_BUFFER_SIZE];
extern volatile u16 ADC_Index;
extern volatile enum STMDSO_State SystemState;
extern volatile enum ADC_State ADCState;

extern void DSO_ModeChange(void);
extern void DSO_RunStop(void);
            
#endif /* __MAIN_STMDSO_H*/

/******************* (C) COPYRIGHT 2009 STM8DSO TEAM *****END OF FILE****/