/**
 ******************************************************************************
 * @file key.c
 * @brief  用状态机编写的按键扫描
 * @author ifree64 - stm8 手持示波表开源项目组
 * @version V0.1.0
 * @date 03/25/2009
 ******************************************************************************
 *
 * free for use
 *
 ******************************************************************************
 */
#include "key.h"

enum KEY_ScanState{
	KSCAN_START = 0,        /* 无键按下, 键盘扫描初始状态 */
	KSCAN_PRESS,            /* 键按下，判断抖动, >0.1s */
	KSCAN_LONGPRESS,        /* 非抖动，判断是否长按键，>0.8s */
	KSCAN_PDLF,             /* 判断连发，得到一次长按键后1s 后开始连发 */
	KSCAN_LIANFA            /* 连发，每0.2s产生一次连发按键 */
};

struct KEY_StateFsm{
	enum KEY_ScanState KPressNext;       /* 键按下，下一个状态 */ 
	enum KEY_ScanState NoKeyNext;        /* 键抬起，下一个状态 */
	u8 KPressTime;	               /* 键按下需持续的时间, 10ms的倍数 */
	u8 KPressType;	     	       /* 键按下满足条件，输出按键类型 */	
};

/* 保证状态编号值与在数组中的位置相同  */
struct KEY_StateFsm const KEY_StateFsmTable[] = {
	/* kpress_next,     nokey_next,     time,   type   */
	{ KSCAN_PRESS,      KSCAN_START,    0,      KTYPE_NO},      /* KSCAN_START: 0 */
	{ KSCAN_LONGPRESS,  KSCAN_START,    5,      KTYPE_NORMAL},  /* KSCAN_PRESS: 1 */
	{ KSCAN_PDLF,       KSCAN_START,    80,     KTYPE_LONG},    /* KSCAN_LONGPRESS: 2 */
	{ KSCAN_LIANFA,     KSCAN_START,    100,    KTYPE_NO},      /* KSCAN_PDLF: 3 */
	{ KSCAN_LIANFA,     KSCAN_START,    20,     KTYPE_LIANFA}   /* KSCAN_LIANFA: 4*/
};

void KEY_Init(void)
{
	GPIO_Init(KEY_ROW_PORT, KEY_ROW_PINALL, GPIO_MODE_IN_PU_NO_IT);
	GPIO_Init(KEY_COLUMN_PORT, KEY_COLUMN_PINALL , GPIO_MODE_OUT_PP_LOW_FAST ); 
}

/* 
   功能描述：读取按键状态,  根据不同按键电路和编号方式修改本函数
   入口参数：无
   出口参数：按键编号
	 
	 ROW : PD7 PD6 PD5
	 COLUMN : PG5 PG4 PG3 PG2
   */
static u8 KEY_Read(void)
{    
  u8 KCode = 0;
	u8 row = 0, column = 0;
	u8 t;
	GPIO_WriteLow(KEY_COLUMN_PORT, KEY_COLUMN_PINALL);	 
	t = (~GPIO_ReadInputData(KEY_ROW_PORT))&KEY_ROW_PINALL;
	if(t)
		{
			// 有键按下，找到它
			u8 t2 = ~KEY_COLUMN1_PIN;
			while(++column <= KEY_COLUMN_NUM)
			{
				KEY_COLUMN_PORT->ODR |= KEY_COLUMN_PINALL; 							// 所有列线置高
				KEY_COLUMN_PORT->ODR &= t2;								 							// 扫描列置底
				row = (~GPIO_ReadInputData(KEY_ROW_PORT))&KEY_ROW_PINALL;	// 读行线
				if( row == t)
					break;
				else
					t2 >>= 1;
			}
			KCode = 3*(column-1);
			if( row == KEY_ROW1_PIN ) KCode += 1;
			else if(row == KEY_ROW2_PIN) KCode += 2;
			else KCode += 3;
		}
	return KCode;
}

/*
   使用说明：为了得到该函数提供的功能，必须每10ms调用1次
   功能描述：按键扫描，根据状态表的设置，返回当前按键状态
   入口参数：无
   出口参数：按键编号和按键种类，格式如下
   D7 D6 D5 D4 D3 D2 D1 D0
   M1 M0 K5 K4 K3 K2 K1 K0
M1:M0 表示按键类型， 01 普通  10 长按键  11 连发按键
K5:K0 按键编号 1~63, 总共可以支持2^6 - 1 = 63个按键    
*/
u8 KEY_Scan(void)
{
	static enum KEY_ScanState KScan_CurrState = KSCAN_START;
	static u8 OldKey;
	static u8 KTimeCounter = 0;

	u8 rKeyCode = 0;		// 0 for No key press
	u8 CurrKey = KEY_Read();

	if( (CurrKey != 0) && (CurrKey == OldKey) )
	{
		if(++KTimeCounter >= KEY_StateFsmTable[KScan_CurrState].KPressTime ) 
		{
			KTimeCounter = 0;
			rKeyCode = KEY_StateFsmTable[KScan_CurrState].KPressType | CurrKey;
			KScan_CurrState = KEY_StateFsmTable[KScan_CurrState].KPressNext;
		}
	}	
	else
	{
		//   抖动或新键
		KScan_CurrState = KEY_StateFsmTable[KScan_CurrState].NoKeyNext;
		OldKey = CurrKey;
	}
	return rKeyCode;
}

/******************* (C) COPYRIGHT 2009 STM8DSO TEAM *****END OF FILE****/
