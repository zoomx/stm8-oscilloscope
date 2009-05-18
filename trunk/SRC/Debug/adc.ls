   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.8 - 03 Dec 2008
   3                     ; Optimizer V4.2.8 - 03 Dec 2008
  38                     ; 17 static void TIM1_Init(void)
  38                     ; 18 {
  40                     	switch	.text
  41  0000               L3_TIM1_Init:
  45                     ; 19     TIM1_DeInit();
  47  0000 cd0000        	call	_TIM1_DeInit
  49                     ; 27     TIM1_TimeBaseInit(0, TIM1_COUNTERMODE_UP, TIM1_200K_ARR, 0);
  51  0003 4b00          	push	#0
  52  0005 ae0077        	ldw	x,#119
  53  0008 89            	pushw	x
  54  0009 4b00          	push	#0
  55  000b 5f            	clrw	x
  56  000c cd0000        	call	_TIM1_TimeBaseInit
  58  000f 5b04          	addw	sp,#4
  59                     ; 30     TIM1_SelectMasterSlaveMode(ENABLE);
  61  0011 a601          	ld	a,#1
  62  0013 cd0000        	call	_TIM1_SelectMasterSlaveMode
  64                     ; 32     TIM1_SelectOutputTrigger(TIM1_TRGOSOURCE_UPDATE);
  66  0016 a620          	ld	a,#32
  67  0018 cd0000        	call	_TIM1_SelectOutputTrigger
  69                     ; 33     TIM1_Cmd(ENABLE);
  71  001b a601          	ld	a,#1
  73                     ; 34 }
  76  001d cc0000        	jp	_TIM1_Cmd
 106                     ; 36 void ADC_Init(void)
 106                     ; 37 {
 107                     	switch	.text
 108  0020               _ADC_Init:
 112                     ; 38     TIM1_Init();
 114  0020 adde          	call	L3_TIM1_Init
 116                     ; 40     GPIO_Init(GPIOE, GPIO_PIN_6, GPIO_MODE_IN_FL_NO_IT);
 118  0022 4b00          	push	#0
 119  0024 4b40          	push	#64
 120  0026 ae5014        	ldw	x,#20500
 121  0029 cd0000        	call	_GPIO_Init
 123  002c 85            	popw	x
 124                     ; 42     ADC2_DeInit();
 126  002d cd0000        	call	_ADC2_DeInit
 128                     ; 44     ADC2_Init( ADC2_CONVERSIONMODE_SINGLE,
 128                     ; 45                ADC2_CHANNEL_9,
 128                     ; 46                ADC2_PRESSEL_FCPU_D4,
 128                     ; 47                ADC2_EXTTRIG_TIM,
 128                     ; 48                ENABLE,
 128                     ; 49                ADC2_ALIGN_LEFT,
 128                     ; 50                ADC2_SCHMITTTRIG_CHANNEL9,
 128                     ; 51                DISABLE             /* SchmittTrigger Disable */
 128                     ; 52               );
 130  0030 4b00          	push	#0
 131  0032 4b09          	push	#9
 132  0034 4b00          	push	#0
 133  0036 4b01          	push	#1
 134  0038 4b00          	push	#0
 135  003a 4b20          	push	#32
 136  003c ae0009        	ldw	x,#9
 137  003f 4f            	clr	a
 138  0040 95            	ld	xh,a
 139  0041 cd0000        	call	_ADC2_Init
 141  0044 5b06          	addw	sp,#6
 142                     ; 55     ADC2_Cmd(ENABLE);
 144  0046 a601          	ld	a,#1
 145  0048 cd0000        	call	_ADC2_Cmd
 147                     ; 58     ADC2_ITConfig(ENABLE);
 149  004b a601          	ld	a,#1
 150  004d cd0000        	call	_ADC2_ITConfig
 152                     ; 61     ADC2_ExternalTriggerConfig(ADC2_EXTTRIG_TIM, ENABLE);
 154  0050 ae0001        	ldw	x,#1
 155  0053 4f            	clr	a
 156  0054 95            	ld	xh,a
 158                     ; 62 }
 161  0055 cc0000        	jp	_ADC2_ExternalTriggerConfig
 184                     ; 64 extern void ADC_GainAdd(void)
 184                     ; 65 {
 185                     	switch	.text
 186  0058               _ADC_GainAdd:
 190                     ; 67 }
 193  0058 81            	ret	
 216                     ; 69 void ADC_GainSub(void)
 216                     ; 70 {
 217                     	switch	.text
 218  0059               _ADC_GainSub:
 222                     ; 72 }
 225  0059 81            	ret	
 248                     ; 74 void ADC_TimeBaseAdd(void)
 248                     ; 75 {
 249                     	switch	.text
 250  005a               _ADC_TimeBaseAdd:
 254                     ; 77 }
 257  005a 81            	ret	
 280                     ; 79 void ADC_TimeBaseSub(void)
 280                     ; 80 {
 281                     	switch	.text
 282  005b               _ADC_TimeBaseSub:
 286                     ; 82 }
 289  005b 81            	ret	
 313                     ; 84 void ADC_TriggerVoltageAdd(void)
 313                     ; 85 {
 314                     	switch	.text
 315  005c               _ADC_TriggerVoltageAdd:
 319                     ; 87 }
 322  005c 81            	ret	
 346                     ; 89 void ADC_TriggerVoltageSub(void)
 346                     ; 90 {
 347                     	switch	.text
 348  005d               _ADC_TriggerVoltageSub:
 352                     ; 92 }
 355  005d 81            	ret	
 368                     	xdef	_ADC_TriggerVoltageSub
 369                     	xdef	_ADC_TriggerVoltageAdd
 370                     	xdef	_ADC_TimeBaseSub
 371                     	xdef	_ADC_TimeBaseAdd
 372                     	xdef	_ADC_GainSub
 373                     	xdef	_ADC_GainAdd
 374                     	xdef	_ADC_Init
 375                     	xref	_TIM1_SelectMasterSlaveMode
 376                     	xref	_TIM1_SelectOutputTrigger
 377                     	xref	_TIM1_Cmd
 378                     	xref	_TIM1_TimeBaseInit
 379                     	xref	_TIM1_DeInit
 380                     	xref	_GPIO_Init
 381                     	xref	_ADC2_ExternalTriggerConfig
 382                     	xref	_ADC2_ITConfig
 383                     	xref	_ADC2_Cmd
 384                     	xref	_ADC2_Init
 385                     	xref	_ADC2_DeInit
 404                     	end
