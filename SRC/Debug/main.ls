   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.8 - 03 Dec 2008
   3                     ; Optimizer V4.2.8 - 03 Dec 2008
  54                     ; 29 u16 GetTriggerPostion(u16 start, u8 tigvol)
  54                     ; 30 {
  56                     	switch	.text
  57  0000               _GetTriggerPostion:
  59  0000 89            	pushw	x
  60       00000000      OFST:	set	0
  63  0001 1e01          	ldw	x,(OFST+1,sp)
  64  0003 2011          	jra	L53
  65  0005               L33:
  66                     ; 33             if( ADC_Buffer[start] < tigvol && ADC_Buffer[start+1] >= tigvol )
  68  0005 d60000        	ld	a,(_ADC_Buffer,x)
  69  0008 1105          	cp	a,(OFST+5,sp)
  70  000a 2407          	jruge	L14
  72  000c d60001        	ld	a,(_ADC_Buffer+1,x)
  73  000f 1105          	cp	a,(OFST+5,sp)
  74                     ; 34                 return start;
  77  0011 2409          	jruge	L6
  78  0013               L14:
  79                     ; 36                 start++;
  81  0013 5c            	incw	x
  82  0014 1f01          	ldw	(OFST+1,sp),x
  83  0016               L53:
  84                     ; 31         while( start < ADC_BUFFER_SIZE )
  86  0016 a30140        	cpw	x,#320
  87  0019 25ea          	jrult	L33
  88                     ; 38         return 0;
  90  001b 5f            	clrw	x
  92  001c               L6:
  94  001c 5b02          	addw	sp,#2
  95  001e 81            	ret	
 122                     ; 41 void CLK_Init(void)
 122                     ; 42 {
 123                     	switch	.text
 124  001f               _CLK_Init:
 128                     ; 44     CLK_DeInit();
 130  001f cd0000        	call	_CLK_DeInit
 132                     ; 47     CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
 134  0022 a680          	ld	a,#128
 135  0024 cd0000        	call	_CLK_SYSCLKConfig
 137                     ; 50     CLK_SYSCLKConfig(CLK_PRESCALER_HSIDIV1);
 139  0027 4f            	clr	a
 140  0028 cd0000        	call	_CLK_SYSCLKConfig
 142                     ; 53     CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSE, DISABLE, DISABLE);
 144  002b 4b00          	push	#0
 145  002d 4b00          	push	#0
 146  002f ae00b4        	ldw	x,#180
 147  0032 a601          	ld	a,#1
 148  0034 95            	ld	xh,a
 149  0035 cd0000        	call	_CLK_ClockSwitchConfig
 151  0038 a601          	ld	a,#1
 152  003a 85            	popw	x
 153                     ; 55     CLK_HSECmd(ENABLE);
 156                     ; 56 }
 159  003b cc0000        	jp	_CLK_HSECmd
 186                     ; 58 void TIM4_Init(void)
 186                     ; 59 {
 187                     	switch	.text
 188  003e               _TIM4_Init:
 192                     ; 60     TIM4_DeInit();
 194  003e cd0000        	call	_TIM4_DeInit
 196                     ; 65     TIM4_TimeBaseInit(TIM4_PRESCALER_128, FMASTER/128/1000);    // 1ms中断
 198  0041 ae00bb        	ldw	x,#187
 199  0044 a607          	ld	a,#7
 200  0046 95            	ld	xh,a
 201  0047 cd0000        	call	_TIM4_TimeBaseInit
 203                     ; 66     TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
 205  004a ae0001        	ldw	x,#1
 206  004d a601          	ld	a,#1
 207  004f 95            	ld	xh,a
 208  0050 cd0000        	call	_TIM4_ITConfig
 210                     ; 67     TIM4_Cmd(ENABLE);
 212  0053 a601          	ld	a,#1
 214                     ; 68 }
 217  0055 cc0000        	jp	_TIM4_Cmd
 241                     ; 70 void TriggerInterruptInit(void)
 241                     ; 71 {
 242                     	switch	.text
 243  0058               _TriggerInterruptInit:
 247                     ; 73 }
 250  0058 81            	ret	
 307                     ; 75 void main(void)
 307                     ; 76 {
 308                     	switch	.text
 309  0059               _main:
 311  0059 5203          	subw	sp,#3
 312       00000003      OFST:	set	3
 315                     ; 80     SystemState = AutoRunMode;
 317  005b 35010002      	mov	_SystemState,#1
 318                     ; 82     ADCState = Triggered;       // ADCState = WaitTrigger;
 320  005f 35020001      	mov	_ADCState,#2
 321                     ; 84     CLK_Init();                 // 主时钟初始化
 323  0063 adba          	call	_CLK_Init
 325                     ; 85     TIM4_Init();                // TIM4 用于产生系统运行需要的定时信号
 327  0065 add7          	call	_TIM4_Init
 329                     ; 88     LCD_Init();                 // LCD驱动初始化
 331  0067 cd0000        	call	_LCD_Init
 333                     ; 89     WDraw_Init();               // 波形显示模块初始化
 335  006a cd0000        	call	_WDraw_Init
 337                     ; 94     enableInterrupts();
 340  006d 9a            	rim	
 342  006e               L721:
 343                     ; 100         if(flag_10ms_ok)
 345  006e 3d05          	tnz	_flag_10ms_ok
 346  0070 2714          	jreq	L331
 347                     ; 102             flag_10ms_ok = 0;
 349  0072 3f05          	clr	_flag_10ms_ok
 350                     ; 103             keycode = KEY_Scan();
 352  0074 cd0000        	call	_KEY_Scan
 354  0077 6b03          	ld	(OFST+0,sp),a
 355                     ; 104             switch(GET_KTYPE(keycode))
 357  0079 a4c0          	and	a,#192
 358  007b a140          	cp	a,#64
 359  007d 2607          	jrne	L331
 362                     ; 106                 case KTYPE_NORMAL:
 362                     ; 107                     KeyParse(GET_KCODE(keycode));
 364  007f 7b03          	ld	a,(OFST+0,sp)
 365  0081 a43f          	and	a,#63
 366  0083 cd0000        	call	_KeyParse
 368                     ; 108                 default:
 368                     ; 109                     break;
 370  0086               L331:
 371                     ; 112         switch(SystemState)
 373  0086 b602          	ld	a,_SystemState
 375                     ; 126             default:
 375                     ; 127                 break;
 376  0088 4a            	dec	a
 377  0089 2703          	jreq	L101
 378  008b 4a            	dec	a
 379  008c 26e0          	jrne	L721
 380  008e               L101:
 381                     ; 115             case AutoRunMode:
 381                     ; 116             case ManualMode:
 381                     ; 117                 //  处理数据
 381                     ; 118                 if( ADCState == ADC_Buffer_Full )
 383  008e b601          	ld	a,_ADCState
 384  0090 a103          	cp	a,#3
 385  0092 26da          	jrne	L721
 386                     ; 120                     trigpos = GetTriggerPostion(0, 64);
 388  0094 4b40          	push	#64
 389  0096 5f            	clrw	x
 390  0097 cd0000        	call	_GetTriggerPostion
 392  009a 84            	pop	a
 393  009b 1f01          	ldw	(OFST-2,sp),x
 394                     ; 121                     WDraw_DisplayUpdate(&ADC_Buffer[trigpos]);
 396  009d 1c0000        	addw	x,#_ADC_Buffer
 397  00a0 cd0000        	call	_WDraw_DisplayUpdate
 399                     ; 122                     ADCState = Triggered;
 401  00a3 35020001      	mov	_ADCState,#2
 402                     ; 123                     ADC_Index = 0;
 404  00a7 5f            	clrw	x
 405  00a8 bf03          	ldw	_ADC_Index,x
 406  00aa 20c2          	jra	L721
 407                     ; 126             default:
 407                     ; 127                 break;
 433                     ; 133 void DSO_ModeChange()
 433                     ; 134 {
 434                     	switch	.text
 435  00ac               _DSO_ModeChange:
 439                     ; 135     switch(SystemState){
 441  00ac b602          	ld	a,_SystemState
 443                     ; 145         default:
 443                     ; 146             break;
 444  00ae 2707          	jreq	L741
 445  00b0 4a            	dec	a
 446  00b1 2709          	jreq	L151
 447  00b3 4a            	dec	a
 448  00b4 270b          	jreq	L351
 450  00b6 81            	ret	
 451  00b7               L741:
 452                     ; 136         case StopMode:
 452                     ; 137             SystemState = AutoRunMode;
 454  00b7 35010002      	mov	_SystemState,#1
 455                     ; 138             break;
 458  00bb 81            	ret	
 459  00bc               L151:
 460                     ; 139         case AutoRunMode:
 460                     ; 140             SystemState = ManualMode;
 462  00bc 35020002      	mov	_SystemState,#2
 463                     ; 141             break;
 466  00c0 81            	ret	
 467  00c1               L351:
 468                     ; 142         case ManualMode:
 468                     ; 143             SystemState = StopMode;
 470  00c1 b702          	ld	_SystemState,a
 471                     ; 144             break;
 473                     ; 145         default:
 473                     ; 146             break;
 475                     ; 149 }
 478  00c3 81            	ret	
 503                     ; 150 void DSO_RunStop(void)
 503                     ; 151 {
 504                     	switch	.text
 505  00c4               _DSO_RunStop:
 509                     ; 152     if(ADCState != STOP)
 511  00c4 3d01          	tnz	_ADCState
 512  00c6 2705          	jreq	L302
 513                     ; 154         ADCState = STOP;
 515  00c8 3f01          	clr	_ADCState
 516                     ; 155         SystemState = StopMode;
 518  00ca 3f02          	clr	_SystemState
 521  00cc 81            	ret	
 522  00cd               L302:
 523                     ; 159         SystemState = AutoRunMode;
 525  00cd 35010002      	mov	_SystemState,#1
 526                     ; 160         ADCState = WaitTrigger;
 528  00d1 35010001      	mov	_ADCState,#1
 529                     ; 162 }
 532  00d5 81            	ret	
 555                     ; 179 void assert_failed(void)
 555                     ; 180 #endif
 555                     ; 181 {
 556                     	switch	.text
 557  00d6               _assert_failed:
 561  00d6               L712:
 562  00d6 20fe          	jra	L712
 695                     	xdef	_main
 696                     	xdef	_TriggerInterruptInit
 697                     	xdef	_TIM4_Init
 698                     	xdef	_CLK_Init
 699                     	xdef	_GetTriggerPostion
 700                     	switch	.ubsct
 701  0000               _TriggerVoltage:
 702  0000 00            	ds.b	1
 703                     	xdef	_TriggerVoltage
 704                     	xref	_WDraw_DisplayUpdate
 705                     	xref	_WDraw_Init
 706                     	xref	_LCD_Init
 707                     	xref	_KeyParse
 708                     	xref	_KEY_Scan
 709                     	xdef	_DSO_RunStop
 710                     	xdef	_DSO_ModeChange
 711  0001               _ADCState:
 712  0001 00            	ds.b	1
 713                     	xdef	_ADCState
 714  0002               _SystemState:
 715  0002 00            	ds.b	1
 716                     	xdef	_SystemState
 717  0003               _ADC_Index:
 718  0003 0000          	ds.b	2
 719                     	xdef	_ADC_Index
 720                     	switch	.bss
 721  0000               _ADC_Buffer:
 722  0000 000000000000  	ds.b	320
 723                     	xdef	_ADC_Buffer
 724                     	switch	.ubsct
 725  0005               _flag_10ms_ok:
 726  0005 00            	ds.b	1
 727                     	xdef	_flag_10ms_ok
 728                     	xref	_TIM4_ITConfig
 729                     	xref	_TIM4_Cmd
 730                     	xref	_TIM4_TimeBaseInit
 731                     	xref	_TIM4_DeInit
 732                     	xref	_CLK_SYSCLKConfig
 733                     	xref	_CLK_ClockSwitchConfig
 734                     	xref	_CLK_HSECmd
 735                     	xref	_CLK_DeInit
 736                     	xdef	_assert_failed
 756                     	end
