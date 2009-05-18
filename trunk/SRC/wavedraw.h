/**
  ******************************************************************************
  * @file stmdso\wavedraw.h
  * @brief 本文件包含波形显示函数的声明。
  * @author ifree64  leexiaofeng@gmail.com
  * @version V0.1
  * @date 04/11/2009
  ******************************************************************************
  */

#ifndef __WAVEDRAW_STMDSO_H_
#define __WAVEDRAW_STMDSO_H_

extern void WDraw_Init(void);
extern void WDraw_DisplayUpdate(@near u8 *pWaveData);
extern void WDraw_DisplayUp(void);
extern void WDraw_DisplayDown(void);
extern void WDraw_DisplayLeft(void);
extern void WDraw_DisplayRight(void);
extern void WDraw_SetCH1TimeBaseInfo(unsigned char *tbinfo);
extern void WDraw_SetCH1GainInfo(unsigned char *gainInfo);

#endif /* __WAVEDRAW_STMDSO_H_*/

/******************* (C) COPYRIGHT 2009 STM8DSO TEAM *****END OF FILE****/