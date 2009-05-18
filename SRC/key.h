/**
  ******************************************************************************
  * @file key.h
  * @brief This file contains functions prototypes.
  * @author ifree64 - stm8 手持示波表开源项目组
  * @version V0.1.0
  * @date 03/25/2009
  ******************************************************************************
  */

#ifndef _KEY_H_
#define	_KEY_H_

#include "stm8s.h"

/* *******************************************************************************
 * keycode格式:   D7 D6 D5 D4 D3 D2 D1 D0
 *                M1 M0 K5 K4 K3 K2 K1 K0
 *  M1:M0 表示按键类型， 01 普通  10 长按键  11 连发按键
 *  K5:K0 按键编号 总共可以支持2^6 - 1 = 63个按键
 * *******************************************************************************/
#define KTYPE_NO        0x00
#define KTYPE_NORMAL    (1<<6)
#define KTYPE_LONG      (2<<6)
#define KTYPE_LIANFA    (3<<6)

#define KTYPE_MASK	0xC0
#define KCODE_MASK	0x3f

// 按键使用的GPIO端口，8个独立按键，不同接法需要修改KEY_Read函数
#define KEY_PORT	(GPIOD)
#define KEY_PIN     (GPIO_PIN_7)
                    
extern void KEY_Init(void);			// 按键初始化
extern u8 KEY_Scan(void);			// 10ms调用1次，返回按键值
#define GET_KTYPE(k)	((k)&KTYPE_MASK)	// 获取按键类型
#define GET_KCODE(k)	((k)&KCODE_MASK)	// 获取按键值

#endif	/*_KEY_H_*/

