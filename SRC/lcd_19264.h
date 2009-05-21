#ifndef _LCD19264_H
#define _LCD19264_H

#include "stm8s.h"

// DB7~DB3
#define LCD_DATA_PORT		(GPIOB)
#define LCD_DATA_PIN		(GPIO_PIN_ALL)
//  推挽高速10MHz输出模式
#define LCD_DATA_OUTPUT_MODE()  do{ \
                                    LCD_DATA_PORT->DDR |= LCD_DATA_PIN; \
                                    LCD_DATA_PORT->CR1 |= LCD_DATA_PIN; \
                                    LCD_DATA_PORT->CR2 |= LCD_DATA_PIN; \
                                }while(0)
//  悬浮输入模式，外部中断关闭
#define LCD_DATA_INPUT_MODE()   do{ \
                                    LCD_DATA_PORT->DDR &= ~LCD_DATA_PIN; \
                                    LCD_DATA_PORT->CR1 &= ~LCD_DATA_PIN; \
                                    LCD_DATA_PORT->CR2 &= ~LCD_DATA_PIN; \
                                }while(0)
                                
#define LCD_SET_DATA(x)	        do{ \
                                    LCD_DATA_PORT->ODR = (x); \
                                }while(0)
                                
#define LCD_READ_DATA()	        (LCD_DATA_PORT->IDR)

// E, RS, RW
#define LCD_CONTROL_PORT	(GPIOC)
#define LCD_E_PIN		    	(GPIO_PIN_1)
#define LCD_RW_PIN		    (GPIO_PIN_2)
#define LCD_RS_PIN		    (GPIO_PIN_3)
#define LCD_CONTROL_PIN     (LCD_E_PIN | LCD_RW_PIN | LCD_RS_PIN)
#define LCD_CONTROL_OUTPUT_MODE()   do{ \
                                        LCD_CONTROL_PORT->DDR |= LCD_CONTROL_PIN;  \
                                        LCD_CONTROL_PORT->CR1 |= LCD_CONTROL_PIN;  \
                                        LCD_CONTROL_PORT->CR2 |= LCD_CONTROL_PIN;  \
                                    }while(0)                                        
#define LCD_E_H()	(LCD_CONTROL_PORT->ODR |= LCD_E_PIN)
#define LCD_E_L()	(LCD_CONTROL_PORT->ODR &= ~LCD_E_PIN)
#define LCD_RS_H()	(LCD_CONTROL_PORT->ODR |= LCD_RS_PIN)
#define LCD_RS_L()	(LCD_CONTROL_PORT->ODR &= ~LCD_RS_PIN)
#define LCD_RW_H()	(LCD_CONTROL_PORT->ODR |= LCD_RW_PIN)
#define LCD_RW_L()	(LCD_CONTROL_PORT->ODR &= ~LCD_RW_PIN)


// CSA, CSB
#define LCD_CS_PORT		(GPIOE)
#define LCD_CSA_PIN		(GPIO_PIN_6)
#define LCD_CSB_PIN		(GPIO_PIN_7)
#define LCD_CS_PIN      (LCD_CSA_PIN | LCD_CSB_PIN)
#define LCD_CS_OUTPUT_MODE()    do{ \
                                    LCD_CS_PORT->DDR |= LCD_CS_PIN;  \
                                    LCD_CS_PORT->CR1 |= LCD_CS_PIN;  \
                                    LCD_CS_PORT->CR2 |= LCD_CS_PIN;  \
                                }while(0)
#define LCD_CSA_H()	    (LCD_CS_PORT->ODR |= LCD_CSA_PIN)
#define LCD_CSA_L()	    (LCD_CS_PORT->ODR &= ~LCD_CSA_PIN)
#define LCD_CSB_H()	    (LCD_CS_PORT->ODR |= LCD_CSB_PIN)
#define LCD_CSB_L()	    (LCD_CS_PORT->ODR &= ~LCD_CSB_PIN)
// 为快速生成片选信号而优化
#define LCD_LEFT        ((u8)0)
#define LCD_MID         ((u8)1)
#define LCD_RIGHT       ((u8)2)
#define LCD_SET_CS_SIGNAL(CSCHIP)     (LCD_CS_PORT->ODR = (CSCHIP)<<6)

#define LCD_RES_PORT    (GPIOC)
#define LCD_RES_PIN     (GPIO_PIN_4)
#define LCD_RES_OUTPUT_MODE()   do{ \
                                    LCD_RES_PORT->DDR |= LCD_RES_PIN;  \
                                    LCD_RES_PORT->CR1 |= LCD_RES_PIN;  \
                                    LCD_RES_PORT->CR2 |= LCD_RES_PIN;  \
                                }while(0)
#define LCD_RES_H()	    (LCD_RES_PORT->ODR |= LCD_RES_PIN)
#define LCD_RES_L()	    (LCD_RES_PORT->ODR &= ~LCD_RES_PIN)

#define LCD_BL_PORT			(GPIOF)
#define LCD_BL_PIN			(GPIO_PIN_4)
#define LCD_BL_OUTPUT_MODE()	do{\
																	LCD_BL_PORT->DDR |= LCD_BL_PIN;		\
																	LCD_BL_PORT->CR1 |= LCD_BL_PIN;		\
																	LCD_BL_PORT->CR2 |= LCD_BL_PIN;		\
															}while(0)
#define LCD_BL_H()	    (LCD_BL_PORT->ODR |= LCD_BL_PIN)
#define LCD_BL_L()	    (LCD_BL_PORT->ODR &= ~LCD_BL_PIN)															

#define LCD_DISPLAY_ON  ((u8)0x3f)
#define LCD_DISPLAY_OFF ((u8)0x3e)
#define LCD_YADDR_BASE  ((u8)0x40)
#define LCD_XPAGE_BASE  ((u8)0xB8)
#define LCD_START_LINE  ((u8)0xC0)

typedef enum _DrawMode{
	LCD_CLEAR,
	LCD_NOT,
	LCD_SET
}DrawMode;

extern void LCD_Init(void);
extern void LCD_Clear(void);
extern void LCD_WriteCommand(u8 cmd, u8 ChipSel);
extern void LCD_WriteData(u8 Data, u8 ChipSel);
extern void LCD_BufferDrawPixel(u8 x, u8 y, DrawMode mode);
extern void LCD_BufferDrawLine(u8 x1, u8 y1, u8 x2, u8 y2, DrawMode mode);
extern void LCD_BufferDrawXDotLine(u8 x, u8 y, u8 len, DrawMode mode);
extern void LCD_BufferDrawYDotLine(u8 x, u8 y, u8 len, DrawMode mode);
extern void LCD_BufferToLCD(void);
extern void LCD_PutString5x8(u8 x, u8 y, unsigned char *str);
extern void LCD_PutChar5x8(u8 x, u8 y, unsigned char ASCII);

#endif
