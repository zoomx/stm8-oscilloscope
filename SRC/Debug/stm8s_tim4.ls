   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.8 - 03 Dec 2008
   3                     ; Optimizer V4.2.8 - 03 Dec 2008
  33                     ; 53 void TIM4_DeInit(void)
  33                     ; 54 {
  35                     	switch	.text
  36  0000               _TIM4_DeInit:
  40                     ; 55   TIM4->CR1 = TIM4_CR1_RESET_VALUE;
  42  0000 725f5340      	clr	21312
  43                     ; 56   TIM4->IER = TIM4_IER_RESET_VALUE;
  45  0004 725f5341      	clr	21313
  46                     ; 57   TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
  48  0008 725f5344      	clr	21316
  49                     ; 58   TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
  51  000c 725f5345      	clr	21317
  52                     ; 59   TIM4->ARR = TIM4_ARR_RESET_VALUE;
  54  0010 35ff5346      	mov	21318,#255
  55                     ; 60   TIM4->SR1 = TIM4_SR1_RESET_VALUE;
  57  0014 725f5342      	clr	21314
  58                     ; 61 }
  61  0018 81            	ret	
 168                     ; 71 void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, u8 TIM4_Period)
 168                     ; 72 {
 169                     	switch	.text
 170  0019               _TIM4_TimeBaseInit:
 172  0019 89            	pushw	x
 173       00000000      OFST:	set	0
 176                     ; 74   assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
 178  001a 9e            	ld	a,xh
 179  001b 4d            	tnz	a
 180  001c 2725          	jreq	L41
 181  001e 9e            	ld	a,xh
 182  001f 4a            	dec	a
 183  0020 2721          	jreq	L41
 184  0022 9e            	ld	a,xh
 185  0023 a102          	cp	a,#2
 186  0025 271c          	jreq	L41
 187  0027 9e            	ld	a,xh
 188  0028 a103          	cp	a,#3
 189  002a 2717          	jreq	L41
 190  002c 9e            	ld	a,xh
 191  002d a104          	cp	a,#4
 192  002f 2712          	jreq	L41
 193  0031 9e            	ld	a,xh
 194  0032 a105          	cp	a,#5
 195  0034 270d          	jreq	L41
 196  0036 9e            	ld	a,xh
 197  0037 a106          	cp	a,#6
 198  0039 2708          	jreq	L41
 199  003b 9e            	ld	a,xh
 200  003c a107          	cp	a,#7
 201  003e 2703          	jreq	L41
 202  0040 cd0000        	call	_assert_failed
 204  0043               L41:
 205                     ; 76   TIM4->PSCR = (u8)(TIM4_Prescaler);
 207  0043 7b01          	ld	a,(OFST+1,sp)
 208  0045 c75345        	ld	21317,a
 209                     ; 78   TIM4->ARR = (u8)(TIM4_Period);
 211  0048 7b02          	ld	a,(OFST+2,sp)
 212  004a c75346        	ld	21318,a
 213                     ; 79 }
 216  004d 85            	popw	x
 217  004e 81            	ret	
 273                     ; 91 void TIM4_Cmd(FunctionalState NewState)
 273                     ; 92 {
 274                     	switch	.text
 275  004f               _TIM4_Cmd:
 277  004f 88            	push	a
 278       00000000      OFST:	set	0
 281                     ; 94   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 283  0050 a101          	cp	a,#1
 284  0052 2706          	jreq	L62
 285  0054 4d            	tnz	a
 286  0055 2703          	jreq	L62
 287  0057 cd0000        	call	_assert_failed
 289  005a               L62:
 290                     ; 97   if (NewState != DISABLE)
 292  005a 7b01          	ld	a,(OFST+1,sp)
 293  005c 2706          	jreq	L511
 294                     ; 99     TIM4->CR1 |= TIM4_CR1_CEN;
 296  005e 72105340      	bset	21312,#0
 298  0062 2004          	jra	L711
 299  0064               L511:
 300                     ; 103     TIM4->CR1 &= (u8)(~TIM4_CR1_CEN);
 302  0064 72115340      	bres	21312,#0
 303  0068               L711:
 304                     ; 105 }
 307  0068 84            	pop	a
 308  0069 81            	ret	
 367                     ; 119 void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
 367                     ; 120 {
 368                     	switch	.text
 369  006a               _TIM4_ITConfig:
 371  006a 89            	pushw	x
 372       00000000      OFST:	set	0
 375                     ; 122   assert_param(IS_TIM4_IT_OK(TIM4_IT));
 377  006b 9e            	ld	a,xh
 378  006c 4a            	dec	a
 379  006d 2703          	jreq	L63
 380  006f cd0000        	call	_assert_failed
 382  0072               L63:
 383                     ; 123   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 385  0072 7b02          	ld	a,(OFST+2,sp)
 386  0074 4a            	dec	a
 387  0075 2707          	jreq	L64
 388  0077 7b02          	ld	a,(OFST+2,sp)
 389  0079 2703          	jreq	L64
 390  007b cd0000        	call	_assert_failed
 392  007e               L64:
 393                     ; 125   if (NewState != DISABLE)
 395  007e 7b02          	ld	a,(OFST+2,sp)
 396  0080 2707          	jreq	L151
 397                     ; 128     TIM4->IER |= (u8)TIM4_IT;
 399  0082 c65341        	ld	a,21313
 400  0085 1a01          	or	a,(OFST+1,sp)
 402  0087 2006          	jra	L351
 403  0089               L151:
 404                     ; 133     TIM4->IER &= (u8)(~TIM4_IT);
 406  0089 7b01          	ld	a,(OFST+1,sp)
 407  008b 43            	cpl	a
 408  008c c45341        	and	a,21313
 409  008f               L351:
 410  008f c75341        	ld	21313,a
 411                     ; 135 }
 414  0092 85            	popw	x
 415  0093 81            	ret	
 452                     ; 145 void TIM4_UpdateDisableConfig(FunctionalState NewState)
 452                     ; 146 {
 453                     	switch	.text
 454  0094               _TIM4_UpdateDisableConfig:
 456  0094 88            	push	a
 457       00000000      OFST:	set	0
 460                     ; 148   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 462  0095 a101          	cp	a,#1
 463  0097 2706          	jreq	L06
 464  0099 4d            	tnz	a
 465  009a 2703          	jreq	L06
 466  009c cd0000        	call	_assert_failed
 468  009f               L06:
 469                     ; 151   if (NewState != DISABLE)
 471  009f 7b01          	ld	a,(OFST+1,sp)
 472  00a1 2706          	jreq	L371
 473                     ; 153     TIM4->CR1 |= TIM4_CR1_UDIS;
 475  00a3 72125340      	bset	21312,#1
 477  00a7 2004          	jra	L571
 478  00a9               L371:
 479                     ; 157     TIM4->CR1 &= (u8)(~TIM4_CR1_UDIS);
 481  00a9 72135340      	bres	21312,#1
 482  00ad               L571:
 483                     ; 159 }
 486  00ad 84            	pop	a
 487  00ae 81            	ret	
 546                     ; 171 void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
 546                     ; 172 {
 547                     	switch	.text
 548  00af               _TIM4_UpdateRequestConfig:
 550  00af 88            	push	a
 551       00000000      OFST:	set	0
 554                     ; 174   assert_param(IS_TIM4_UPDATE_SOURCE_OK(TIM4_UpdateSource));
 556  00b0 4d            	tnz	a
 557  00b1 2706          	jreq	L27
 558  00b3 4a            	dec	a
 559  00b4 2703          	jreq	L27
 560  00b6 cd0000        	call	_assert_failed
 562  00b9               L27:
 563                     ; 177   if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
 565  00b9 7b01          	ld	a,(OFST+1,sp)
 566  00bb 2706          	jreq	L522
 567                     ; 179     TIM4->CR1 |= TIM4_CR1_URS;
 569  00bd 72145340      	bset	21312,#2
 571  00c1 2004          	jra	L722
 572  00c3               L522:
 573                     ; 183     TIM4->CR1 &= (u8)(~TIM4_CR1_URS);
 575  00c3 72155340      	bres	21312,#2
 576  00c7               L722:
 577                     ; 185 }
 580  00c7 84            	pop	a
 581  00c8 81            	ret	
 639                     ; 197 void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
 639                     ; 198 {
 640                     	switch	.text
 641  00c9               _TIM4_SelectOnePulseMode:
 643  00c9 88            	push	a
 644       00000000      OFST:	set	0
 647                     ; 200   assert_param(IS_TIM4_OPM_MODE_OK(TIM4_OPMode));
 649  00ca a101          	cp	a,#1
 650  00cc 2706          	jreq	L401
 651  00ce 4d            	tnz	a
 652  00cf 2703          	jreq	L401
 653  00d1 cd0000        	call	_assert_failed
 655  00d4               L401:
 656                     ; 203   if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
 658  00d4 7b01          	ld	a,(OFST+1,sp)
 659  00d6 2706          	jreq	L752
 660                     ; 205     TIM4->CR1 |= TIM4_CR1_OPM;
 662  00d8 72165340      	bset	21312,#3
 664  00dc 2004          	jra	L162
 665  00de               L752:
 666                     ; 209     TIM4->CR1 &= (u8)(~TIM4_CR1_OPM);
 668  00de 72175340      	bres	21312,#3
 669  00e2               L162:
 670                     ; 212 }
 673  00e2 84            	pop	a
 674  00e3 81            	ret	
 743                     ; 236 void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
 743                     ; 237 {
 744                     	switch	.text
 745  00e4               _TIM4_PrescalerConfig:
 747  00e4 89            	pushw	x
 748       00000000      OFST:	set	0
 751                     ; 239   assert_param(IS_TIM4_PRESCALER_RELOAD_OK(TIM4_PSCReloadMode));
 753  00e5 9f            	ld	a,xl
 754  00e6 4d            	tnz	a
 755  00e7 2707          	jreq	L611
 756  00e9 9f            	ld	a,xl
 757  00ea 4a            	dec	a
 758  00eb 2703          	jreq	L611
 759  00ed cd0000        	call	_assert_failed
 761  00f0               L611:
 762                     ; 240   assert_param(IS_TIM4_PRESCALER_OK(Prescaler));
 764  00f0 7b01          	ld	a,(OFST+1,sp)
 765  00f2 2721          	jreq	L621
 766  00f4 a101          	cp	a,#1
 767  00f6 271d          	jreq	L621
 768  00f8 a102          	cp	a,#2
 769  00fa 2719          	jreq	L621
 770  00fc a103          	cp	a,#3
 771  00fe 2715          	jreq	L621
 772  0100 a104          	cp	a,#4
 773  0102 2711          	jreq	L621
 774  0104 a105          	cp	a,#5
 775  0106 270d          	jreq	L621
 776  0108 a106          	cp	a,#6
 777  010a 2709          	jreq	L621
 778  010c a107          	cp	a,#7
 779  010e 2705          	jreq	L621
 780  0110 cd0000        	call	_assert_failed
 782  0113 7b01          	ld	a,(OFST+1,sp)
 783  0115               L621:
 784                     ; 243   TIM4->PSCR = (u8)Prescaler;
 786  0115 c75345        	ld	21317,a
 787                     ; 246   TIM4->EGR = (u8)TIM4_PSCReloadMode;
 789  0118 7b02          	ld	a,(OFST+2,sp)
 790  011a c75343        	ld	21315,a
 791                     ; 247 }
 794  011d 85            	popw	x
 795  011e 81            	ret	
 832                     ; 257 void TIM4_ARRPreloadConfig(FunctionalState NewState)
 832                     ; 258 {
 833                     	switch	.text
 834  011f               _TIM4_ARRPreloadConfig:
 836  011f 88            	push	a
 837       00000000      OFST:	set	0
 840                     ; 260   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 842  0120 a101          	cp	a,#1
 843  0122 2706          	jreq	L041
 844  0124 4d            	tnz	a
 845  0125 2703          	jreq	L041
 846  0127 cd0000        	call	_assert_failed
 848  012a               L041:
 849                     ; 263   if (NewState != DISABLE)
 851  012a 7b01          	ld	a,(OFST+1,sp)
 852  012c 2706          	jreq	L333
 853                     ; 265     TIM4->CR1 |= TIM4_CR1_ARPE;
 855  012e 721e5340      	bset	21312,#7
 857  0132 2004          	jra	L533
 858  0134               L333:
 859                     ; 269     TIM4->CR1 &= (u8)(~TIM4_CR1_ARPE);
 861  0134 721f5340      	bres	21312,#7
 862  0138               L533:
 863                     ; 271 }
 866  0138 84            	pop	a
 867  0139 81            	ret	
 917                     ; 282 void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
 917                     ; 283 {
 918                     	switch	.text
 919  013a               _TIM4_GenerateEvent:
 921  013a 88            	push	a
 922       00000000      OFST:	set	0
 925                     ; 285   assert_param(IS_TIM4_EVENT_SOURCE_OK(TIM4_EventSource));
 927  013b 4a            	dec	a
 928  013c 2703          	jreq	L051
 929  013e cd0000        	call	_assert_failed
 931  0141               L051:
 932                     ; 288   TIM4->EGR = (u8)(TIM4_EventSource);
 934  0141 7b01          	ld	a,(OFST+1,sp)
 935  0143 c75343        	ld	21315,a
 936                     ; 289 }
 939  0146 84            	pop	a
 940  0147 81            	ret	
 974                     ; 300 void TIM4_SetCounter(u8 Counter)
 974                     ; 301 {
 975                     	switch	.text
 976  0148               _TIM4_SetCounter:
 980                     ; 303   TIM4->CNTR = (u8)(Counter);
 982  0148 c75344        	ld	21316,a
 983                     ; 304 }
 986  014b 81            	ret	
1020                     ; 315 void TIM4_SetAutoreload(u8 Autoreload)
1020                     ; 316 {
1021                     	switch	.text
1022  014c               _TIM4_SetAutoreload:
1026                     ; 318   TIM4->ARR = (u8)(Autoreload);
1028  014c c75346        	ld	21318,a
1029                     ; 319 }
1032  014f 81            	ret	
1055                     ; 329 u8 TIM4_GetCounter(void)
1055                     ; 330 {
1056                     	switch	.text
1057  0150               _TIM4_GetCounter:
1061                     ; 332   return (u8)(TIM4->CNTR);
1063  0150 c65344        	ld	a,21316
1066  0153 81            	ret	
1090                     ; 343 TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
1090                     ; 344 {
1091                     	switch	.text
1092  0154               _TIM4_GetPrescaler:
1096                     ; 346   return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
1098  0154 c65345        	ld	a,21317
1101  0157 81            	ret	
1171                     ; 358 FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
1171                     ; 359 {
1172                     	switch	.text
1173  0158               _TIM4_GetFlagStatus:
1175  0158 88            	push	a
1176       00000000      OFST:	set	0
1179                     ; 361   assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1181  0159 4a            	dec	a
1182  015a 2703          	jreq	L071
1183  015c cd0000        	call	_assert_failed
1185  015f               L071:
1186                     ; 363   if ((TIM4->SR1 & TIM4_FLAG) != RESET )
1188  015f c65342        	ld	a,21314
1189  0162 1501          	bcp	a,(OFST+1,sp)
1190  0164 2705          	jreq	L374
1191                     ; 365     return (FlagStatus)(SET);
1193  0166 a601          	ld	a,#1
1196  0168 5b01          	addw	sp,#1
1197  016a 81            	ret	
1198  016b               L374:
1199                     ; 369     return (FlagStatus)(RESET);
1201  016b 4f            	clr	a
1204  016c 5b01          	addw	sp,#1
1205  016e 81            	ret	
1241                     ; 382 void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
1241                     ; 383 {
1242                     	switch	.text
1243  016f               _TIM4_ClearFlag:
1245  016f 88            	push	a
1246       00000000      OFST:	set	0
1249                     ; 385   assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1251  0170 4a            	dec	a
1252  0171 2703          	jreq	L002
1253  0173 cd0000        	call	_assert_failed
1255  0176               L002:
1256                     ; 388   TIM4->SR1 = (u8)(~TIM4_FLAG);
1258  0176 7b01          	ld	a,(OFST+1,sp)
1259  0178 43            	cpl	a
1260  0179 c75342        	ld	21314,a
1261                     ; 390 }
1264  017c 84            	pop	a
1265  017d 81            	ret	
1302                     ; 401 ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
1302                     ; 402 {
1303                     	switch	.text
1304  017e               _TIM4_GetITStatus:
1306  017e 88            	push	a
1307       00000000      OFST:	set	0
1310                     ; 404   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1312  017f 4a            	dec	a
1313  0180 2703          	jreq	L012
1314  0182 cd0000        	call	_assert_failed
1316  0185               L012:
1317                     ; 406   if (((TIM4->SR1 & TIM4_IT) != RESET ) && ((TIM4->IER & TIM4_IT) != RESET ))
1319  0185 c65342        	ld	a,21314
1320  0188 1501          	bcp	a,(OFST+1,sp)
1321  018a 270c          	jreq	L335
1323  018c c65341        	ld	a,21313
1324  018f 1501          	bcp	a,(OFST+1,sp)
1325  0191 2705          	jreq	L335
1326                     ; 408     return (ITStatus)(SET);
1328  0193 a601          	ld	a,#1
1331  0195 5b01          	addw	sp,#1
1332  0197 81            	ret	
1333  0198               L335:
1334                     ; 412     return (ITStatus)(RESET);
1336  0198 4f            	clr	a
1339  0199 5b01          	addw	sp,#1
1340  019b 81            	ret	
1377                     ; 425 void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
1377                     ; 426 {
1378                     	switch	.text
1379  019c               _TIM4_ClearITPendingBit:
1381  019c 88            	push	a
1382       00000000      OFST:	set	0
1385                     ; 428   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1387  019d 4a            	dec	a
1388  019e 2703          	jreq	L022
1389  01a0 cd0000        	call	_assert_failed
1391  01a3               L022:
1392                     ; 431   TIM4->SR1 = (u8)(~TIM4_IT);
1394  01a3 7b01          	ld	a,(OFST+1,sp)
1395  01a5 43            	cpl	a
1396  01a6 c75342        	ld	21314,a
1397                     ; 432 }
1400  01a9 84            	pop	a
1401  01aa 81            	ret	
1414                     	xdef	_TIM4_ClearITPendingBit
1415                     	xdef	_TIM4_GetITStatus
1416                     	xdef	_TIM4_ClearFlag
1417                     	xdef	_TIM4_GetFlagStatus
1418                     	xdef	_TIM4_GetPrescaler
1419                     	xdef	_TIM4_GetCounter
1420                     	xdef	_TIM4_SetAutoreload
1421                     	xdef	_TIM4_SetCounter
1422                     	xdef	_TIM4_GenerateEvent
1423                     	xdef	_TIM4_ARRPreloadConfig
1424                     	xdef	_TIM4_PrescalerConfig
1425                     	xdef	_TIM4_SelectOnePulseMode
1426                     	xdef	_TIM4_UpdateRequestConfig
1427                     	xdef	_TIM4_UpdateDisableConfig
1428                     	xdef	_TIM4_ITConfig
1429                     	xdef	_TIM4_Cmd
1430                     	xdef	_TIM4_TimeBaseInit
1431                     	xdef	_TIM4_DeInit
1432                     	xref	_assert_failed
1451                     	end
