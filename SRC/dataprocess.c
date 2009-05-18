/**
  ******************************************************************************
  * @file stmdso\dataprocess.c
  * @brief 本文件实现采样数据的处理。
  * @author ifree64  leexiaofeng@gmail.com
  * @version V0.1
  * @date 04/11/2009
  ******************************************************************************
 **/

#include "stm8s.h"
#include "dataprocess.h"

void DProc_Init(void)
{
    
}

unsigned long DProc_GetVpp(void)
{
    
}

/*
static u16 ComputeFreq(u16 next, u16 first)
{
    u16 retValue;
    retValue = 200000UL / (next-first);
    return retValue;
}

static u8 *Int2Str(u16 Number)
{
    u8 i;
    for(i = STR_BUFFER_SIZE-2; i > 0; --i)
    {
        StrBuffer[i] = Number%10 + '0';
        Number /= 10;
    }
    return &StrBuffer[i+1];
}
*/

/******************* (C) COPYRIGHT 2009 STM8DSO TEAM *****END OF FILE****/