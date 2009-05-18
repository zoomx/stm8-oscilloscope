   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.8 - 03 Dec 2008
   3                     ; Optimizer V4.2.8 - 03 Dec 2008
  33                     ; 68 @near @interrupt void TRAP_IRQHandler(void)
  33                     ; 69 {
  35                     	switch	.text
  36  0000               _TRAP_IRQHandler:
  40                     ; 73   return;
  43  0000 80            	iret	
  66                     ; 86 @near @interrupt void TLI_IRQHandler (void)
  66                     ; 87 {
  67                     	switch	.text
  68  0001               _TLI_IRQHandler:
  72                     ; 91   return;
  75  0001 80            	iret	
  98                     ; 104 @near @interrupt void AWU_IRQHandler (void)
  98                     ; 105 {
  99                     	switch	.text
 100  0002               _AWU_IRQHandler:
 104                     ; 109   return;
 107  0002 80            	iret	
 130                     ; 122 @near @interrupt void CLK_IRQHandler (void)
 130                     ; 123 {
 131                     	switch	.text
 132  0003               _CLK_IRQHandler:
 136                     ; 127   return;
 139  0003 80            	iret	
 163                     ; 140 @near @interrupt void EXTI_PORTA_IRQHandler (void)
 163                     ; 141 {
 164                     	switch	.text
 165  0004               _EXTI_PORTA_IRQHandler:
 169                     ; 145   return;
 172  0004 80            	iret	
 196                     ; 158 @near @interrupt void EXTI_PORTB_IRQHandler (void)
 196                     ; 159 {
 197                     	switch	.text
 198  0005               _EXTI_PORTB_IRQHandler:
 202                     ; 163   return;
 205  0005 80            	iret	
 229                     ; 176 @near @interrupt void EXTI_PORTC_IRQHandler (void)
 229                     ; 177 {
 230                     	switch	.text
 231  0006               _EXTI_PORTC_IRQHandler:
 235                     ; 181   return;
 238  0006 80            	iret	
 262                     ; 194 @near @interrupt void EXTI_PORTD_IRQHandler (void)
 262                     ; 195 {
 263                     	switch	.text
 264  0007               _EXTI_PORTD_IRQHandler:
 268                     ; 199   return;
 271  0007 80            	iret	
 295                     ; 212 @near @interrupt void EXTI_PORTE_IRQHandler (void)
 295                     ; 213 {
 296                     	switch	.text
 297  0008               _EXTI_PORTE_IRQHandler:
 301                     ; 217   return;
 304  0008 80            	iret	
 327                     ; 250 @near @interrupt void CAN_RX_IRQHandler (void)
 327                     ; 251 {
 328                     	switch	.text
 329  0009               _CAN_RX_IRQHandler:
 333                     ; 255   return;
 336  0009 80            	iret	
 359                     ; 268 @near @interrupt void CAN_TX_IRQHandler (void)
 359                     ; 269 {
 360                     	switch	.text
 361  000a               _CAN_TX_IRQHandler:
 365                     ; 273   return;
 368  000a 80            	iret	
 391                     ; 287 @near @interrupt void SPI_IRQHandler (void)
 391                     ; 288 {
 392                     	switch	.text
 393  000b               _SPI_IRQHandler:
 397                     ; 292   return;
 400  000b 80            	iret	
 424                     ; 305 @near @interrupt void TIM1_UPD_OVF_TRG_BRK_IRQHandler (void)
 424                     ; 306 {
 425                     	switch	.text
 426  000c               _TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 430                     ; 310   return;
 433  000c 80            	iret	
 457                     ; 323 @near @interrupt void TIM1_CAP_COM_IRQHandler (void)
 457                     ; 324 {
 458                     	switch	.text
 459  000d               _TIM1_CAP_COM_IRQHandler:
 463                     ; 328   return;
 466  000d 80            	iret	
 490                     ; 378 @near @interrupt void TIM2_UPD_OVF_BRK_IRQHandler (void)
 490                     ; 379 {
 491                     	switch	.text
 492  000e               _TIM2_UPD_OVF_BRK_IRQHandler:
 496                     ; 383   return;
 499  000e 80            	iret	
 523                     ; 396 @near @interrupt void TIM2_CAP_COM_IRQHandler (void)
 523                     ; 397 {
 524                     	switch	.text
 525  000f               _TIM2_CAP_COM_IRQHandler:
 529                     ; 401   return;
 532  000f 80            	iret	
 556                     ; 416 @near @interrupt void TIM3_UPD_OVF_BRK_IRQHandler (void)
 556                     ; 417 {
 557                     	switch	.text
 558  0010               _TIM3_UPD_OVF_BRK_IRQHandler:
 562                     ; 421   return;
 565  0010 80            	iret	
 589                     ; 434 @near @interrupt void TIM3_CAP_COM_IRQHandler (void)
 589                     ; 435 {
 590                     	switch	.text
 591  0011               _TIM3_CAP_COM_IRQHandler:
 595                     ; 439   return;
 598  0011 80            	iret	
 622                     ; 454 @near @interrupt void UART1_TX_IRQHandler (void)
 622                     ; 455 {
 623                     	switch	.text
 624  0012               _UART1_TX_IRQHandler:
 628                     ; 459   return;
 631  0012 80            	iret	
 655                     ; 472 @near @interrupt void UART1_RX_IRQHandler (void)
 655                     ; 473 {
 656                     	switch	.text
 657  0013               _UART1_RX_IRQHandler:
 661                     ; 477   return;
 664  0013 80            	iret	
 687                     ; 491 @near @interrupt void I2C_IRQHandler (void)
 687                     ; 492 {
 688                     	switch	.text
 689  0014               _I2C_IRQHandler:
 693                     ; 496   return;
 696  0014 80            	iret	
 720                     ; 548 @near @interrupt void UART3_TX_IRQHandler (void)
 720                     ; 549 {
 721                     	switch	.text
 722  0015               _UART3_TX_IRQHandler:
 726                     ; 553     return;
 729  0015 80            	iret	
 753                     ; 566 @near @interrupt void UART3_RX_IRQHandler (void)
 753                     ; 567 {
 754                     	switch	.text
 755  0016               _UART3_RX_IRQHandler:
 759                     ; 571     return;
 762  0016 80            	iret	
 785                     ; 586 @near @interrupt void ADC2_IRQHandler (void)
 785                     ; 587 {
 786                     	switch	.text
 787  0017               _ADC2_IRQHandler:
 791                     ; 592     return;
 794  0017 80            	iret	
 820                     ; 646 @near @interrupt void TIM4_UPD_OVF_IRQHandler (void)
 820                     ; 647 {
 821                     	switch	.text
 822  0018               _TIM4_UPD_OVF_IRQHandler:
 824  0018 3b0002        	push	c_x+2
 825  001b be00          	ldw	x,c_x
 826  001d 89            	pushw	x
 827  001e 3b0002        	push	c_y+2
 828  0021 be00          	ldw	x,c_y
 829  0023 89            	pushw	x
 832                     ; 649 	GPIO_WriteReverse(GPIOD, GPIO_PIN_4);
 834  0024 4b10          	push	#16
 835  0026 ae500f        	ldw	x,#20495
 836  0029 cd0000        	call	_GPIO_WriteReverse
 838  002c 84            	pop	a
 839                     ; 651 	TIM4_ClearITPendingBit(TIM4_IT_UPDATE);
 841  002d a601          	ld	a,#1
 842  002f cd0000        	call	_TIM4_ClearITPendingBit
 844                     ; 652 }
 847  0032 85            	popw	x
 848  0033 bf00          	ldw	c_y,x
 849  0035 320002        	pop	c_y+2
 850  0038 85            	popw	x
 851  0039 bf00          	ldw	c_x,x
 852  003b 320002        	pop	c_x+2
 853  003e 80            	iret	
 877                     ; 665 @near @interrupt void EEPROM_EEC_IRQHandler (void)
 877                     ; 666 {
 878                     	switch	.text
 879  003f               _EEPROM_EEC_IRQHandler:
 883                     ; 670   return;
 886  003f 80            	iret	
 899                     	xdef	_EEPROM_EEC_IRQHandler
 900                     	xdef	_TIM4_UPD_OVF_IRQHandler
 901                     	xdef	_ADC2_IRQHandler
 902                     	xdef	_UART3_TX_IRQHandler
 903                     	xdef	_UART3_RX_IRQHandler
 904                     	xdef	_I2C_IRQHandler
 905                     	xdef	_UART1_RX_IRQHandler
 906                     	xdef	_UART1_TX_IRQHandler
 907                     	xdef	_TIM3_CAP_COM_IRQHandler
 908                     	xdef	_TIM3_UPD_OVF_BRK_IRQHandler
 909                     	xdef	_TIM2_CAP_COM_IRQHandler
 910                     	xdef	_TIM2_UPD_OVF_BRK_IRQHandler
 911                     	xdef	_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 912                     	xdef	_TIM1_CAP_COM_IRQHandler
 913                     	xdef	_SPI_IRQHandler
 914                     	xdef	_CAN_TX_IRQHandler
 915                     	xdef	_CAN_RX_IRQHandler
 916                     	xdef	_EXTI_PORTE_IRQHandler
 917                     	xdef	_EXTI_PORTD_IRQHandler
 918                     	xdef	_EXTI_PORTC_IRQHandler
 919                     	xdef	_EXTI_PORTB_IRQHandler
 920                     	xdef	_EXTI_PORTA_IRQHandler
 921                     	xdef	_CLK_IRQHandler
 922                     	xdef	_AWU_IRQHandler
 923                     	xdef	_TLI_IRQHandler
 924                     	xdef	_TRAP_IRQHandler
 925                     	xref	_TIM4_ClearITPendingBit
 926                     	xref	_GPIO_WriteReverse
 927                     	xref.b	c_x
 928                     	xref.b	c_y
 947                     	end
