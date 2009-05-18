   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.8 - 03 Dec 2008
   3                     ; Optimizer V4.2.8 - 03 Dec 2008
  99                     ; 47 void GPIO_DeInit(GPIO_TypeDef* GPIOx)
  99                     ; 48 {
 101                     	switch	.text
 102  0000               _GPIO_DeInit:
 106                     ; 49   GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
 108  0000 7f            	clr	(x)
 109                     ; 50   GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
 111  0001 6f02          	clr	(2,x)
 112                     ; 51   GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
 114  0003 6f03          	clr	(3,x)
 115                     ; 52   GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
 117  0005 6f04          	clr	(4,x)
 118                     ; 53 }
 121  0007 81            	ret	
 362                     ; 66 void GPIO_Init(GPIO_TypeDef* GPIOx,
 362                     ; 67                GPIO_Pin_TypeDef GPIO_Pin,
 362                     ; 68                GPIO_Mode_TypeDef GPIO_Mode)
 362                     ; 69 {
 363                     	switch	.text
 364  0008               _GPIO_Init:
 366  0008 89            	pushw	x
 367       00000000      OFST:	set	0
 370                     ; 74   assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
 372  0009 7b06          	ld	a,(OFST+6,sp)
 373  000b 272f          	jreq	L41
 374  000d a140          	cp	a,#64
 375  000f 272b          	jreq	L41
 376  0011 a120          	cp	a,#32
 377  0013 2727          	jreq	L41
 378  0015 a160          	cp	a,#96
 379  0017 2723          	jreq	L41
 380  0019 a180          	cp	a,#128
 381  001b 271f          	jreq	L41
 382  001d a1c0          	cp	a,#192
 383  001f 271b          	jreq	L41
 384  0021 a1a0          	cp	a,#160
 385  0023 2717          	jreq	L41
 386  0025 a1e0          	cp	a,#224
 387  0027 2713          	jreq	L41
 388  0029 a190          	cp	a,#144
 389  002b 270f          	jreq	L41
 390  002d a1d0          	cp	a,#208
 391  002f 270b          	jreq	L41
 392  0031 a1b0          	cp	a,#176
 393  0033 2707          	jreq	L41
 394  0035 a1f0          	cp	a,#240
 395  0037 2703          	jreq	L41
 396  0039 cd0000        	call	_assert_failed
 398  003c               L41:
 399                     ; 75   assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
 401  003c 7b05          	ld	a,(OFST+5,sp)
 402  003e 2603          	jrne	L22
 403  0040 cd0000        	call	_assert_failed
 405  0043               L22:
 406                     ; 81   if ((((u8)(GPIO_Mode)) & (u8)0x80) != (u8)0x00) /* Output mode */
 408  0043 7b06          	ld	a,(OFST+6,sp)
 409  0045 2a18          	jrpl	L771
 410                     ; 83     if ((((u8)(GPIO_Mode)) & (u8)0x10) != (u8)0x00) /* High level */
 412  0047 a510          	bcp	a,#16
 413  0049 2707          	jreq	L102
 414                     ; 85       GPIOx->ODR |= (u8)GPIO_Pin;
 416  004b 1e01          	ldw	x,(OFST+1,sp)
 417  004d f6            	ld	a,(x)
 418  004e 1a05          	or	a,(OFST+5,sp)
 420  0050 2006          	jra	L302
 421  0052               L102:
 422                     ; 88       GPIOx->ODR &= (u8)(~(GPIO_Pin));
 424  0052 1e01          	ldw	x,(OFST+1,sp)
 425  0054 7b05          	ld	a,(OFST+5,sp)
 426  0056 43            	cpl	a
 427  0057 f4            	and	a,(x)
 428  0058               L302:
 429  0058 f7            	ld	(x),a
 430                     ; 91     GPIOx->DDR |= (u8)GPIO_Pin;
 432  0059 e602          	ld	a,(2,x)
 433  005b 1a05          	or	a,(OFST+5,sp)
 435  005d 2007          	jra	L502
 436  005f               L771:
 437                     ; 95     GPIOx->DDR &= (u8)(~(GPIO_Pin));
 439  005f 1e01          	ldw	x,(OFST+1,sp)
 440  0061 7b05          	ld	a,(OFST+5,sp)
 441  0063 43            	cpl	a
 442  0064 e402          	and	a,(2,x)
 443  0066               L502:
 444  0066 e702          	ld	(2,x),a
 445                     ; 102   if ((((u8)(GPIO_Mode)) & (u8)0x40) != (u8)0x00) /* Pull-Up or Push-Pull */
 447  0068 7b06          	ld	a,(OFST+6,sp)
 448  006a a540          	bcp	a,#64
 449  006c 2706          	jreq	L702
 450                     ; 104     GPIOx->CR1 |= (u8)GPIO_Pin;
 452  006e e603          	ld	a,(3,x)
 453  0070 1a05          	or	a,(OFST+5,sp)
 455  0072 2005          	jra	L112
 456  0074               L702:
 457                     ; 107     GPIOx->CR1 &= (u8)(~(GPIO_Pin));
 459  0074 7b05          	ld	a,(OFST+5,sp)
 460  0076 43            	cpl	a
 461  0077 e403          	and	a,(3,x)
 462  0079               L112:
 463  0079 e703          	ld	(3,x),a
 464                     ; 114   if ((((u8)(GPIO_Mode)) & (u8)0x20) != (u8)0x00) /* Interrupt or Slow slope */
 466  007b 7b06          	ld	a,(OFST+6,sp)
 467  007d a520          	bcp	a,#32
 468  007f 2706          	jreq	L312
 469                     ; 116     GPIOx->CR2 |= (u8)GPIO_Pin;
 471  0081 e604          	ld	a,(4,x)
 472  0083 1a05          	or	a,(OFST+5,sp)
 474  0085 2005          	jra	L512
 475  0087               L312:
 476                     ; 119     GPIOx->CR2 &= (u8)(~(GPIO_Pin));
 478  0087 7b05          	ld	a,(OFST+5,sp)
 479  0089 43            	cpl	a
 480  008a e404          	and	a,(4,x)
 481  008c               L512:
 482  008c e704          	ld	(4,x),a
 483                     ; 122 }
 486  008e 85            	popw	x
 487  008f 81            	ret	
 533                     ; 133 void GPIO_Write(GPIO_TypeDef* GPIOx, u8 PortVal)
 533                     ; 134 {
 534                     	switch	.text
 535  0090               _GPIO_Write:
 537  0090 89            	pushw	x
 538       00000000      OFST:	set	0
 541                     ; 135   GPIOx->ODR = PortVal;
 543  0091 1e01          	ldw	x,(OFST+1,sp)
 544  0093 7b05          	ld	a,(OFST+5,sp)
 545  0095 f7            	ld	(x),a
 546                     ; 136 }
 549  0096 85            	popw	x
 550  0097 81            	ret	
 597                     ; 147 void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 597                     ; 148 {
 598                     	switch	.text
 599  0098               _GPIO_WriteHigh:
 601  0098 89            	pushw	x
 602       00000000      OFST:	set	0
 605                     ; 149   GPIOx->ODR |= (u8)PortPins;
 607  0099 f6            	ld	a,(x)
 608  009a 1a05          	or	a,(OFST+5,sp)
 609  009c f7            	ld	(x),a
 610                     ; 150 }
 613  009d 85            	popw	x
 614  009e 81            	ret	
 661                     ; 161 void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 661                     ; 162 {
 662                     	switch	.text
 663  009f               _GPIO_WriteLow:
 665  009f 89            	pushw	x
 666       00000000      OFST:	set	0
 669                     ; 163   GPIOx->ODR &= (u8)(~PortPins);
 671  00a0 7b05          	ld	a,(OFST+5,sp)
 672  00a2 43            	cpl	a
 673  00a3 f4            	and	a,(x)
 674  00a4 f7            	ld	(x),a
 675                     ; 164 }
 678  00a5 85            	popw	x
 679  00a6 81            	ret	
 726                     ; 175 void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 726                     ; 176 {
 727                     	switch	.text
 728  00a7               _GPIO_WriteReverse:
 730  00a7 89            	pushw	x
 731       00000000      OFST:	set	0
 734                     ; 177   GPIOx->ODR ^= (u8)PortPins;
 736  00a8 f6            	ld	a,(x)
 737  00a9 1805          	xor	a,(OFST+5,sp)
 738  00ab f7            	ld	(x),a
 739                     ; 178 }
 742  00ac 85            	popw	x
 743  00ad 81            	ret	
 781                     ; 187 u8 GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
 781                     ; 188 {
 782                     	switch	.text
 783  00ae               _GPIO_ReadOutputData:
 787                     ; 189   return ((u8)GPIOx->ODR);
 789  00ae f6            	ld	a,(x)
 792  00af 81            	ret	
 829                     ; 199 u8 GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
 829                     ; 200 {
 830                     	switch	.text
 831  00b0               _GPIO_ReadInputData:
 835                     ; 201   return ((u8)GPIOx->IDR);
 837  00b0 e601          	ld	a,(1,x)
 840  00b2 81            	ret	
 908                     ; 214 BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
 908                     ; 215 {
 909                     	switch	.text
 910  00b3               _GPIO_ReadInputPin:
 912  00b3 89            	pushw	x
 913       00000000      OFST:	set	0
 916                     ; 216   return ((BitStatus)(GPIOx->IDR & (u8)GPIO_Pin));
 918  00b4 e601          	ld	a,(1,x)
 919  00b6 1405          	and	a,(OFST+5,sp)
 922  00b8 85            	popw	x
 923  00b9 81            	ret	
1002                     ; 229 void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
1002                     ; 230 {
1003                     	switch	.text
1004  00ba               _GPIO_ExternalPullUpConfig:
1006  00ba 89            	pushw	x
1007       00000000      OFST:	set	0
1010                     ; 232   assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
1012  00bb 7b05          	ld	a,(OFST+5,sp)
1013  00bd 2603          	jrne	L05
1014  00bf cd0000        	call	_assert_failed
1016  00c2               L05:
1017                     ; 233   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1019  00c2 7b06          	ld	a,(OFST+6,sp)
1020  00c4 4a            	dec	a
1021  00c5 2707          	jreq	L06
1022  00c7 7b06          	ld	a,(OFST+6,sp)
1023  00c9 2703          	jreq	L06
1024  00cb cd0000        	call	_assert_failed
1026  00ce               L06:
1027                     ; 235   if (NewState != DISABLE) /* External Pull-Up Set*/
1029  00ce 7b06          	ld	a,(OFST+6,sp)
1030  00d0 2708          	jreq	L374
1031                     ; 237     GPIOx->CR1 |= (u8)GPIO_Pin;
1033  00d2 1e01          	ldw	x,(OFST+1,sp)
1034  00d4 e603          	ld	a,(3,x)
1035  00d6 1a05          	or	a,(OFST+5,sp)
1037  00d8 2007          	jra	L574
1038  00da               L374:
1039                     ; 240     GPIOx->CR1 &= (u8)(~(GPIO_Pin));
1041  00da 1e01          	ldw	x,(OFST+1,sp)
1042  00dc 7b05          	ld	a,(OFST+5,sp)
1043  00de 43            	cpl	a
1044  00df e403          	and	a,(3,x)
1045  00e1               L574:
1046  00e1 e703          	ld	(3,x),a
1047                     ; 242 }
1050  00e3 85            	popw	x
1051  00e4 81            	ret	
1064                     	xdef	_GPIO_ExternalPullUpConfig
1065                     	xdef	_GPIO_ReadInputPin
1066                     	xdef	_GPIO_ReadOutputData
1067                     	xdef	_GPIO_ReadInputData
1068                     	xdef	_GPIO_WriteReverse
1069                     	xdef	_GPIO_WriteLow
1070                     	xdef	_GPIO_WriteHigh
1071                     	xdef	_GPIO_Write
1072                     	xdef	_GPIO_Init
1073                     	xdef	_GPIO_DeInit
1074                     	xref	_assert_failed
1093                     	end
