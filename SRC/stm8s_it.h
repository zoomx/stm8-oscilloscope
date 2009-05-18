/**
  ******************************************************************************
  * @file stm8s_it.h
  * @brief This file contains the headers of the interrupt handlers, for Cosmic
  *	compiler.
  * @author STMicroelectronics - MCD Application Team
  * @version V1.1.0
  * @date 02/27/2009
  ******************************************************************************
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2009 STMicroelectronics</center></h2>
  * @image html logo.bmp
  ******************************************************************************
  */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __STM8S_IT_H
#define __STM8S_IT_H

/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
extern void @near _stext(void); /* RESET startup routine */
extern void @near NonHandledInterrupt(void);
extern void @near TRAP_IRQHandler(void); /* TRAP */
extern void @near TLI_IRQHandler(void); /* TLI */
extern void @near AWU_IRQHandler(void); /* AWU */
extern void @near CLK_IRQHandler(void); /* CLOCK */
extern void @near EXTI_PORTA_IRQHandler(void); /* EXTI PORTA */
extern void @near EXTI_PORTB_IRQHandler(void); /* EXTI PORTB */
extern void @near EXTI_PORTC_IRQHandler(void); /* EXTI PORTC */
extern void @near EXTI_PORTD_IRQHandler(void); /* EXTI PORTD */
extern void @near EXTI_PORTE_IRQHandler(void); /* EXTI PORTE */

#ifdef STM8S903
 extern void @near EXTI_PORTF_IRQHandler(void); /* EXTI PORTF */
#endif /*STM8S903*/

#ifdef STM8S208
 extern void @near CAN_RX_IRQHandler(void); /* CAN RX */
 extern void @near CAN_TX_IRQHandler(void); /* CAN TX/ER/SC */
#endif /*STM8S208*/

extern void @near SPI_IRQHandler(void); /* SPI */
extern void @near TIM1_CAP_COM_IRQHandler(void); /* TIM1 CAP/COM */
extern void @near TIM1_UPD_OVF_TRG_BRK_IRQHandler(void); /* TIM1 UPD/OVF/TRG/BRK */

#ifdef STM8S903
 extern void @near TIM5_UPD_OVF_BRK_TRG_IRQHandler(void); /* TIM5 UPD/OVF/BRK/TRG */
 extern void @near TIM5_CAP_COM_IRQHandler(void); /* TIM5 CAP/COM */
#else /*STM8S208, STM8S207, STM8S105 or STM8S103*/
 extern void @near TIM2_UPD_OVF_BRK_IRQHandler(void); /* TIM2 UPD/OVF/BRK */
 extern void @near TIM2_CAP_COM_IRQHandler(void); /* TIM2 CAP/COM */
#endif /*STM8S903*/

#if defined (STM8S208) || defined(STM8S207) || defined(STM8S105)
 extern void @near TIM3_UPD_OVF_BRK_IRQHandler(void); /* TIM3 UPD/OVF/BRK */
 extern void @near TIM3_CAP_COM_IRQHandler(void); /* TIM3 CAP/COM */
#endif /*STM8S208, STM8S207 or STM8S105*/

#ifndef STM8S105
 extern void @near UART1_TX_IRQHandler(void); /* UART1 TX */
 extern void @near UART1_RX_IRQHandler(void); /* UART1 RX */
#endif /*STM8S105*/

extern void @near I2C_IRQHandler(void); /* I2C */

#ifdef STM8S105
 extern void @near UART2_RX_IRQHandler(void); /* UART2 RX */
 extern void @near UART2_TX_IRQHandler(void); /* UART2 TX */
#endif /* STM8S105*/

#if defined(STM8S207) || defined(STM8S208)
 extern void @near UART3_RX_IRQHandler(void); /* UART3 RX */
 extern void @near UART3_TX_IRQHandler(void); /* UART3 TX */
#endif /*STM8S207, STM8S208*/

#if defined(STM8S207) || defined(STM8S208)
 extern void @near ADC2_IRQHandler(void); /* ADC2 */
#else /*STM8S105, STM8S103 or STM8S903*/
 extern void @near ADC1_IRQHandler(void); /* ADC1 */
#endif /*STM8S207, STM8S208*/

#ifdef STM8S903
 extern void @near TIM6_UPD_OVF_TRG_IRQHandler(void); /* TIM6 UPD/OVF/TRG */
#else /*STM8S208, STM8S207, STM8S105 or STM8S103*/
 extern void @near TIM4_UPD_OVF_IRQHandler(void); /* TIM4 UPD/OVF */
#endif /*STM8S903*/

extern void @near EEPROM_EEC_IRQHandler(void); /* EEPROM ECC CORRECTION */

#endif /* __STM8S_IT_H */

/******************* (C) COPYRIGHT 2009 STMicroelectronics *****END OF FILE****/
