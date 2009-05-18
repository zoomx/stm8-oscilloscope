   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.8 - 03 Dec 2008
   3                     ; Optimizer V4.2.8 - 03 Dec 2008
   5                     .const:	section	.text
   6  0000               _HSIDivFactor:
   7  0000 01            	dc.b	1
   8  0001 02            	dc.b	2
   9  0002 04            	dc.b	4
  10  0003 08            	dc.b	8
  11  0004               _CLKPrescTable:
  12  0004 01            	dc.b	1
  13  0005 02            	dc.b	2
  14  0006 04            	dc.b	4
  15  0007 08            	dc.b	8
  16  0008 0a            	dc.b	10
  17  0009 10            	dc.b	16
  18  000a 14            	dc.b	20
  19  000b 28            	dc.b	40
  48                     ; 66 void CLK_DeInit(void)
  48                     ; 67 {
  50                     	switch	.text
  51  0000               _CLK_DeInit:
  55                     ; 69   CLK->ICKR = CLK_ICKR_RESET_VALUE;
  57  0000 350150c0      	mov	20672,#1
  58                     ; 70   CLK->ECKR = CLK_ECKR_RESET_VALUE;
  60  0004 725f50c1      	clr	20673
  61                     ; 71   CLK->SWR  = CLK_SWR_RESET_VALUE;
  63  0008 35e150c4      	mov	20676,#225
  64                     ; 72   CLK->SWCR = CLK_SWCR_RESET_VALUE;
  66  000c 725f50c5      	clr	20677
  67                     ; 73   CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  69  0010 351850c6      	mov	20678,#24
  70                     ; 74   CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  72  0014 35ff50c7      	mov	20679,#255
  73                     ; 75   CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  75  0018 35ff50ca      	mov	20682,#255
  76                     ; 76   CLK->CSSR = CLK_CSSR_RESET_VALUE;
  78  001c 725f50c8      	clr	20680
  79                     ; 77   CLK->CCOR = CLK_CCOR_RESET_VALUE;
  81  0020 725f50c9      	clr	20681
  83  0024               L52:
  84                     ; 78   while (CLK->CCOR & CLK_CCOR_CCOEN)
  86  0024 720050c9fb    	btjt	20681,#0,L52
  87                     ; 80   CLK->CCOR = CLK_CCOR_RESET_VALUE;
  89  0029 725f50c9      	clr	20681
  90                     ; 81   CLK->CANCCR = CLK_CANCCR_RESET_VALUE;
  92  002d 725f50cb      	clr	20683
  93                     ; 82   CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
  95  0031 725f50cc      	clr	20684
  96                     ; 83   CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
  98  0035 725f50cd      	clr	20685
  99                     ; 85 }
 102  0039 81            	ret	
 159                     ; 98 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 159                     ; 99 {
 160                     	switch	.text
 161  003a               _CLK_FastHaltWakeUpCmd:
 163  003a 88            	push	a
 164       00000000      OFST:	set	0
 167                     ; 102   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 169  003b a101          	cp	a,#1
 170  003d 2706          	jreq	L41
 171  003f 4d            	tnz	a
 172  0040 2703          	jreq	L41
 173  0042 cd0000        	call	_assert_failed
 175  0045               L41:
 176                     ; 104   if (NewState != DISABLE)
 178  0045 7b01          	ld	a,(OFST+1,sp)
 179  0047 2706          	jreq	L75
 180                     ; 107     CLK->ICKR |= CLK_ICKR_FHWU;
 182  0049 721450c0      	bset	20672,#2
 184  004d 2004          	jra	L16
 185  004f               L75:
 186                     ; 112     CLK->ICKR &= (u8)(~CLK_ICKR_FHWU);
 188  004f 721550c0      	bres	20672,#2
 189  0053               L16:
 190                     ; 115 }
 193  0053 84            	pop	a
 194  0054 81            	ret	
 230                     ; 124 void CLK_HSECmd(FunctionalState NewState)
 230                     ; 125 {
 231                     	switch	.text
 232  0055               _CLK_HSECmd:
 234  0055 88            	push	a
 235       00000000      OFST:	set	0
 238                     ; 128   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 240  0056 a101          	cp	a,#1
 241  0058 2706          	jreq	L62
 242  005a 4d            	tnz	a
 243  005b 2703          	jreq	L62
 244  005d cd0000        	call	_assert_failed
 246  0060               L62:
 247                     ; 130   if (NewState != DISABLE)
 249  0060 7b01          	ld	a,(OFST+1,sp)
 250  0062 2706          	jreq	L101
 251                     ; 133     CLK->ECKR |= CLK_ECKR_HSEEN;
 253  0064 721050c1      	bset	20673,#0
 255  0068 2004          	jra	L301
 256  006a               L101:
 257                     ; 138     CLK->ECKR &= (u8)(~CLK_ECKR_HSEEN);
 259  006a 721150c1      	bres	20673,#0
 260  006e               L301:
 261                     ; 141 }
 264  006e 84            	pop	a
 265  006f 81            	ret	
 301                     ; 150 void CLK_HSICmd(FunctionalState NewState)
 301                     ; 151 {
 302                     	switch	.text
 303  0070               _CLK_HSICmd:
 305  0070 88            	push	a
 306       00000000      OFST:	set	0
 309                     ; 154   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 311  0071 a101          	cp	a,#1
 312  0073 2706          	jreq	L04
 313  0075 4d            	tnz	a
 314  0076 2703          	jreq	L04
 315  0078 cd0000        	call	_assert_failed
 317  007b               L04:
 318                     ; 156   if (NewState != DISABLE)
 320  007b 7b01          	ld	a,(OFST+1,sp)
 321  007d 2706          	jreq	L321
 322                     ; 159     CLK->ICKR |= CLK_ICKR_HSIEN;
 324  007f 721050c0      	bset	20672,#0
 326  0083 2004          	jra	L521
 327  0085               L321:
 328                     ; 164     CLK->ICKR &= (u8)(~CLK_ICKR_HSIEN);
 330  0085 721150c0      	bres	20672,#0
 331  0089               L521:
 332                     ; 167 }
 335  0089 84            	pop	a
 336  008a 81            	ret	
 372                     ; 176 void CLK_LSICmd(FunctionalState NewState)
 372                     ; 177 {
 373                     	switch	.text
 374  008b               _CLK_LSICmd:
 376  008b 88            	push	a
 377       00000000      OFST:	set	0
 380                     ; 180   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 382  008c a101          	cp	a,#1
 383  008e 2706          	jreq	L25
 384  0090 4d            	tnz	a
 385  0091 2703          	jreq	L25
 386  0093 cd0000        	call	_assert_failed
 388  0096               L25:
 389                     ; 182   if (NewState != DISABLE)
 391  0096 7b01          	ld	a,(OFST+1,sp)
 392  0098 2706          	jreq	L541
 393                     ; 185     CLK->ICKR |= CLK_ICKR_LSIEN;
 395  009a 721650c0      	bset	20672,#3
 397  009e 2004          	jra	L741
 398  00a0               L541:
 399                     ; 190     CLK->ICKR &= (u8)(~CLK_ICKR_LSIEN);
 401  00a0 721750c0      	bres	20672,#3
 402  00a4               L741:
 403                     ; 193 }
 406  00a4 84            	pop	a
 407  00a5 81            	ret	
 443                     ; 203 void CLK_CCOCmd(FunctionalState NewState)
 443                     ; 204 {
 444                     	switch	.text
 445  00a6               _CLK_CCOCmd:
 447  00a6 88            	push	a
 448       00000000      OFST:	set	0
 451                     ; 207   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 453  00a7 a101          	cp	a,#1
 454  00a9 2706          	jreq	L46
 455  00ab 4d            	tnz	a
 456  00ac 2703          	jreq	L46
 457  00ae cd0000        	call	_assert_failed
 459  00b1               L46:
 460                     ; 209   if (NewState != DISABLE)
 462  00b1 7b01          	ld	a,(OFST+1,sp)
 463  00b3 2706          	jreq	L761
 464                     ; 212     CLK->CCOR |= CLK_CCOR_CCOEN;
 466  00b5 721050c9      	bset	20681,#0
 468  00b9 2004          	jra	L171
 469  00bb               L761:
 470                     ; 217     CLK->CCOR &= (u8)(~CLK_CCOR_CCOEN);
 472  00bb 721150c9      	bres	20681,#0
 473  00bf               L171:
 474                     ; 220 }
 477  00bf 84            	pop	a
 478  00c0 81            	ret	
 514                     ; 231 void CLK_ClockSwitchCmd(FunctionalState NewState)
 514                     ; 232 {
 515                     	switch	.text
 516  00c1               _CLK_ClockSwitchCmd:
 518  00c1 88            	push	a
 519       00000000      OFST:	set	0
 522                     ; 235   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 524  00c2 a101          	cp	a,#1
 525  00c4 2706          	jreq	L67
 526  00c6 4d            	tnz	a
 527  00c7 2703          	jreq	L67
 528  00c9 cd0000        	call	_assert_failed
 530  00cc               L67:
 531                     ; 237   if (NewState != DISABLE )
 533  00cc 7b01          	ld	a,(OFST+1,sp)
 534  00ce 2706          	jreq	L112
 535                     ; 240     CLK->SWCR |= CLK_SWCR_SWEN;
 537  00d0 721250c5      	bset	20677,#1
 539  00d4 2004          	jra	L312
 540  00d6               L112:
 541                     ; 245     CLK->SWCR &= (u8)(~CLK_SWCR_SWEN);
 543  00d6 721350c5      	bres	20677,#1
 544  00da               L312:
 545                     ; 248 }
 548  00da 84            	pop	a
 549  00db 81            	ret	
 586                     ; 260 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 586                     ; 261 {
 587                     	switch	.text
 588  00dc               _CLK_SlowActiveHaltWakeUpCmd:
 590  00dc 88            	push	a
 591       00000000      OFST:	set	0
 594                     ; 264   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 596  00dd a101          	cp	a,#1
 597  00df 2706          	jreq	L011
 598  00e1 4d            	tnz	a
 599  00e2 2703          	jreq	L011
 600  00e4 cd0000        	call	_assert_failed
 602  00e7               L011:
 603                     ; 266   if (NewState != DISABLE)
 605  00e7 7b01          	ld	a,(OFST+1,sp)
 606  00e9 2706          	jreq	L332
 607                     ; 269     CLK->ICKR |= CLK_ICKR_SWUAH;
 609  00eb 721a50c0      	bset	20672,#5
 611  00ef 2004          	jra	L532
 612  00f1               L332:
 613                     ; 274     CLK->ICKR &= (u8)(~CLK_ICKR_SWUAH);
 615  00f1 721b50c0      	bres	20672,#5
 616  00f5               L532:
 617                     ; 277 }
 620  00f5 84            	pop	a
 621  00f6 81            	ret	
 781                     ; 289 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 781                     ; 290 {
 782                     	switch	.text
 783  00f7               _CLK_PeripheralClockConfig:
 785  00f7 89            	pushw	x
 786       00000000      OFST:	set	0
 789                     ; 293   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 791  00f8 9f            	ld	a,xl
 792  00f9 4a            	dec	a
 793  00fa 2707          	jreq	L221
 794  00fc 9f            	ld	a,xl
 795  00fd 4d            	tnz	a
 796  00fe 2703          	jreq	L221
 797  0100 cd0000        	call	_assert_failed
 799  0103               L221:
 800                     ; 294   assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 802  0103 7b01          	ld	a,(OFST+1,sp)
 803  0105 2731          	jreq	L231
 804  0107 a101          	cp	a,#1
 805  0109 272d          	jreq	L231
 806  010b a103          	cp	a,#3
 807  010d 2729          	jreq	L231
 808  010f a102          	cp	a,#2
 809  0111 2725          	jreq	L231
 810  0113 a104          	cp	a,#4
 811  0115 2721          	jreq	L231
 812  0117 a105          	cp	a,#5
 813  0119 271d          	jreq	L231
 814  011b a104          	cp	a,#4
 815  011d 2719          	jreq	L231
 816  011f a106          	cp	a,#6
 817  0121 2715          	jreq	L231
 818  0123 a107          	cp	a,#7
 819  0125 2711          	jreq	L231
 820  0127 a117          	cp	a,#23
 821  0129 270d          	jreq	L231
 822  012b a113          	cp	a,#19
 823  012d 2709          	jreq	L231
 824  012f a112          	cp	a,#18
 825  0131 2705          	jreq	L231
 826  0133 cd0000        	call	_assert_failed
 828  0136 7b01          	ld	a,(OFST+1,sp)
 829  0138               L231:
 830                     ; 296   if (((u8)CLK_Peripheral & (u8)0x10) == 0x00)
 832  0138 a510          	bcp	a,#16
 833  013a 262c          	jrne	L123
 834                     ; 298     if (NewState != DISABLE)
 836  013c 0d02          	tnz	(OFST+2,sp)
 837  013e 2712          	jreq	L323
 838                     ; 301       CLK->PCKENR1 |= (u8)((u8)1 << ((u8)CLK_Peripheral & (u8)0x0F));
 840  0140 a40f          	and	a,#15
 841  0142 5f            	clrw	x
 842  0143 97            	ld	xl,a
 843  0144 a601          	ld	a,#1
 844  0146 5d            	tnzw	x
 845  0147 2704          	jreq	L631
 846  0149               L041:
 847  0149 48            	sll	a
 848  014a 5a            	decw	x
 849  014b 26fc          	jrne	L041
 850  014d               L631:
 851  014d ca50c7        	or	a,20679
 853  0150 2011          	jp	LC002
 854  0152               L323:
 855                     ; 306       CLK->PCKENR1 &= (u8)(~(u8)(((u8)1 << ((u8)CLK_Peripheral & (u8)0x0F))));
 857  0152 a40f          	and	a,#15
 858  0154 5f            	clrw	x
 859  0155 97            	ld	xl,a
 860  0156 a601          	ld	a,#1
 861  0158 5d            	tnzw	x
 862  0159 2704          	jreq	L241
 863  015b               L441:
 864  015b 48            	sll	a
 865  015c 5a            	decw	x
 866  015d 26fc          	jrne	L441
 867  015f               L241:
 868  015f 43            	cpl	a
 869  0160 c450c7        	and	a,20679
 870  0163               LC002:
 871  0163 c750c7        	ld	20679,a
 872  0166 202a          	jra	L723
 873  0168               L123:
 874                     ; 311     if (NewState != DISABLE)
 876  0168 0d02          	tnz	(OFST+2,sp)
 877  016a 2712          	jreq	L133
 878                     ; 314       CLK->PCKENR2 |= (u8)((u8)1 << ((u8)CLK_Peripheral & (u8)0x0F));
 880  016c a40f          	and	a,#15
 881  016e 5f            	clrw	x
 882  016f 97            	ld	xl,a
 883  0170 a601          	ld	a,#1
 884  0172 5d            	tnzw	x
 885  0173 2704          	jreq	L641
 886  0175               L051:
 887  0175 48            	sll	a
 888  0176 5a            	decw	x
 889  0177 26fc          	jrne	L051
 890  0179               L641:
 891  0179 ca50ca        	or	a,20682
 893  017c 2011          	jp	LC001
 894  017e               L133:
 895                     ; 319       CLK->PCKENR2 &= (u8)(~(u8)(((u8)1 << ((u8)CLK_Peripheral & (u8)0x0F))));
 897  017e a40f          	and	a,#15
 898  0180 5f            	clrw	x
 899  0181 97            	ld	xl,a
 900  0182 a601          	ld	a,#1
 901  0184 5d            	tnzw	x
 902  0185 2704          	jreq	L251
 903  0187               L451:
 904  0187 48            	sll	a
 905  0188 5a            	decw	x
 906  0189 26fc          	jrne	L451
 907  018b               L251:
 908  018b 43            	cpl	a
 909  018c c450ca        	and	a,20682
 910  018f               LC001:
 911  018f c750ca        	ld	20682,a
 912  0192               L723:
 913                     ; 323 }
 916  0192 85            	popw	x
 917  0193 81            	ret	
1106                     ; 338 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1106                     ; 339 {
1107                     	switch	.text
1108  0194               _CLK_ClockSwitchConfig:
1110  0194 89            	pushw	x
1111  0195 5204          	subw	sp,#4
1112       00000004      OFST:	set	4
1115                     ; 342   u16 DownCounter = CLK_TIMEOUT;
1117  0197 ae0491        	ldw	x,#1169
1118  019a 1f03          	ldw	(OFST-1,sp),x
1119                     ; 343   ErrorStatus Swif = ERROR;
1121  019c 7b02          	ld	a,(OFST-2,sp)
1122  019e 97            	ld	xl,a
1123                     ; 346   assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1125  019f 7b06          	ld	a,(OFST+2,sp)
1126  01a1 a1e1          	cp	a,#225
1127  01a3 270b          	jreq	L461
1128  01a5 a1d2          	cp	a,#210
1129  01a7 2707          	jreq	L461
1130  01a9 a1b4          	cp	a,#180
1131  01ab 2703          	jreq	L461
1132  01ad cd0000        	call	_assert_failed
1134  01b0               L461:
1135                     ; 347   assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1137  01b0 7b05          	ld	a,(OFST+1,sp)
1138  01b2 2706          	jreq	L471
1139  01b4 4a            	dec	a
1140  01b5 2703          	jreq	L471
1141  01b7 cd0000        	call	_assert_failed
1143  01ba               L471:
1144                     ; 348   assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1146  01ba 7b09          	ld	a,(OFST+5,sp)
1147  01bc 4a            	dec	a
1148  01bd 2707          	jreq	L402
1149  01bf 7b09          	ld	a,(OFST+5,sp)
1150  01c1 2703          	jreq	L402
1151  01c3 cd0000        	call	_assert_failed
1153  01c6               L402:
1154                     ; 349   assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1156  01c6 7b0a          	ld	a,(OFST+6,sp)
1157  01c8 2706          	jreq	L412
1158  01ca 4a            	dec	a
1159  01cb 2703          	jreq	L412
1160  01cd cd0000        	call	_assert_failed
1162  01d0               L412:
1163                     ; 352   clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1165  01d0 c650c3        	ld	a,20675
1166  01d3 6b01          	ld	(OFST-3,sp),a
1167                     ; 355   if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1169  01d5 7b05          	ld	a,(OFST+1,sp)
1170  01d7 4a            	dec	a
1171  01d8 262d          	jrne	L544
1172                     ; 359     CLK->SWCR |= CLK_SWCR_SWEN;
1174  01da 721250c5      	bset	20677,#1
1175                     ; 362     if (ITState != DISABLE)
1177  01de 7b09          	ld	a,(OFST+5,sp)
1178  01e0 2706          	jreq	L744
1179                     ; 364       CLK->SWCR |= CLK_SWCR_SWIEN;
1181  01e2 721450c5      	bset	20677,#2
1183  01e6 2004          	jra	L154
1184  01e8               L744:
1185                     ; 368       CLK->SWCR &= (u8)(~CLK_SWCR_SWIEN);
1187  01e8 721550c5      	bres	20677,#2
1188  01ec               L154:
1189                     ; 372     CLK->SWR = (u8)CLK_NewClock;
1191  01ec 7b06          	ld	a,(OFST+2,sp)
1192  01ee c750c4        	ld	20676,a
1194  01f1 2003          	jra	L754
1195  01f3               L354:
1196                     ; 376       DownCounter--;
1198  01f3 5a            	decw	x
1199  01f4 1f03          	ldw	(OFST-1,sp),x
1200  01f6               L754:
1201                     ; 374     while (((CLK->SWCR & CLK_SWCR_SWBSY) && (DownCounter != 0)))
1203  01f6 720150c504    	btjf	20677,#0,L364
1205  01fb 1e03          	ldw	x,(OFST-1,sp)
1206  01fd 26f4          	jrne	L354
1207  01ff               L364:
1208                     ; 379     if (DownCounter != 0)
1210  01ff 1e03          	ldw	x,(OFST-1,sp)
1211                     ; 381       Swif = SUCCESS;
1213  0201 2617          	jrne	LC003
1214                     ; 385       Swif = ERROR;
1216  0203 0f02          	clr	(OFST-2,sp)
1217  0205 2017          	jra	L174
1218  0207               L544:
1219                     ; 393     if (ITState != DISABLE)
1221  0207 7b09          	ld	a,(OFST+5,sp)
1222  0209 2706          	jreq	L374
1223                     ; 395       CLK->SWCR |= CLK_SWCR_SWIEN;
1225  020b 721450c5      	bset	20677,#2
1227  020f 2004          	jra	L574
1228  0211               L374:
1229                     ; 399       CLK->SWCR &= (u8)(~CLK_SWCR_SWIEN);
1231  0211 721550c5      	bres	20677,#2
1232  0215               L574:
1233                     ; 403     CLK->SWR = (u8)CLK_NewClock;
1235  0215 7b06          	ld	a,(OFST+2,sp)
1236  0217 c750c4        	ld	20676,a
1237                     ; 407     Swif = SUCCESS;
1239  021a               LC003:
1241  021a a601          	ld	a,#1
1242  021c 6b02          	ld	(OFST-2,sp),a
1243  021e               L174:
1244                     ; 412   if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1246  021e 7b0a          	ld	a,(OFST+6,sp)
1247  0220 260c          	jrne	L774
1249  0222 7b01          	ld	a,(OFST-3,sp)
1250  0224 a1e1          	cp	a,#225
1251  0226 2606          	jrne	L774
1252                     ; 414     CLK->ICKR &= (u8)(~CLK_ICKR_HSIEN);
1254  0228 721150c0      	bres	20672,#0
1256  022c 201e          	jra	L105
1257  022e               L774:
1258                     ; 416   else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1260  022e 7b0a          	ld	a,(OFST+6,sp)
1261  0230 260c          	jrne	L305
1263  0232 7b01          	ld	a,(OFST-3,sp)
1264  0234 a1d2          	cp	a,#210
1265  0236 2606          	jrne	L305
1266                     ; 418     CLK->ICKR &= (u8)(~CLK_ICKR_LSIEN);
1268  0238 721750c0      	bres	20672,#3
1270  023c 200e          	jra	L105
1271  023e               L305:
1272                     ; 420   else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1274  023e 7b0a          	ld	a,(OFST+6,sp)
1275  0240 260a          	jrne	L105
1277  0242 7b01          	ld	a,(OFST-3,sp)
1278  0244 a1b4          	cp	a,#180
1279  0246 2604          	jrne	L105
1280                     ; 422     CLK->ECKR &= (u8)(~CLK_ECKR_HSEEN);
1282  0248 721150c1      	bres	20673,#0
1283  024c               L105:
1284                     ; 425   return(Swif);
1286  024c 7b02          	ld	a,(OFST-2,sp)
1289  024e 5b06          	addw	sp,#6
1290  0250 81            	ret	
1429                     ; 437 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1429                     ; 438 {
1430                     	switch	.text
1431  0251               _CLK_HSIPrescalerConfig:
1433  0251 88            	push	a
1434       00000000      OFST:	set	0
1437                     ; 441   assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1439  0252 4d            	tnz	a
1440  0253 270f          	jreq	L622
1441  0255 a108          	cp	a,#8
1442  0257 270b          	jreq	L622
1443  0259 a110          	cp	a,#16
1444  025b 2707          	jreq	L622
1445  025d a118          	cp	a,#24
1446  025f 2703          	jreq	L622
1447  0261 cd0000        	call	_assert_failed
1449  0264               L622:
1450                     ; 444   CLK->CKDIVR &= (u8)(~CLK_CKDIVR_HSIDIV);
1452  0264 c650c6        	ld	a,20678
1453  0267 a4e7          	and	a,#231
1454  0269 c750c6        	ld	20678,a
1455                     ; 447   CLK->CKDIVR |= (u8)HSIPrescaler;
1457  026c c650c6        	ld	a,20678
1458  026f 1a01          	or	a,(OFST+1,sp)
1459  0271 c750c6        	ld	20678,a
1460                     ; 449 }
1463  0274 84            	pop	a
1464  0275 81            	ret	
1600                     ; 460 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1600                     ; 461 {
1601                     	switch	.text
1602  0276               _CLK_CCOConfig:
1604  0276 88            	push	a
1605       00000000      OFST:	set	0
1608                     ; 464   assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1610  0277 4d            	tnz	a
1611  0278 2733          	jreq	L042
1612  027a a104          	cp	a,#4
1613  027c 272f          	jreq	L042
1614  027e a102          	cp	a,#2
1615  0280 272b          	jreq	L042
1616  0282 a108          	cp	a,#8
1617  0284 2727          	jreq	L042
1618  0286 a10a          	cp	a,#10
1619  0288 2723          	jreq	L042
1620  028a a10c          	cp	a,#12
1621  028c 271f          	jreq	L042
1622  028e a10e          	cp	a,#14
1623  0290 271b          	jreq	L042
1624  0292 a110          	cp	a,#16
1625  0294 2717          	jreq	L042
1626  0296 a112          	cp	a,#18
1627  0298 2713          	jreq	L042
1628  029a a114          	cp	a,#20
1629  029c 270f          	jreq	L042
1630  029e a116          	cp	a,#22
1631  02a0 270b          	jreq	L042
1632  02a2 a118          	cp	a,#24
1633  02a4 2707          	jreq	L042
1634  02a6 a11a          	cp	a,#26
1635  02a8 2703          	jreq	L042
1636  02aa cd0000        	call	_assert_failed
1638  02ad               L042:
1639                     ; 467   CLK->CCOR &= (u8)(~CLK_CCOR_CCOSEL);
1641  02ad c650c9        	ld	a,20681
1642  02b0 a4e1          	and	a,#225
1643  02b2 c750c9        	ld	20681,a
1644                     ; 470   CLK->CCOR |= (u8)CLK_CCO;
1646  02b5 c650c9        	ld	a,20681
1647  02b8 1a01          	or	a,(OFST+1,sp)
1648  02ba c750c9        	ld	20681,a
1649                     ; 473   CLK->CCOR |= CLK_CCOR_CCOEN;
1651                     ; 475 }
1654  02bd 84            	pop	a
1655  02be 721050c9      	bset	20681,#0
1656  02c2 81            	ret	
1722                     ; 487 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1722                     ; 488 {
1723                     	switch	.text
1724  02c3               _CLK_ITConfig:
1726  02c3 89            	pushw	x
1727       00000000      OFST:	set	0
1730                     ; 491   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1732  02c4 9f            	ld	a,xl
1733  02c5 4a            	dec	a
1734  02c6 2707          	jreq	L252
1735  02c8 9f            	ld	a,xl
1736  02c9 4d            	tnz	a
1737  02ca 2703          	jreq	L252
1738  02cc cd0000        	call	_assert_failed
1740  02cf               L252:
1741                     ; 492   assert_param(IS_CLK_IT_OK(CLK_IT));
1743  02cf 7b01          	ld	a,(OFST+1,sp)
1744  02d1 a10c          	cp	a,#12
1745  02d3 2707          	jreq	L262
1746  02d5 a11c          	cp	a,#28
1747  02d7 2703          	jreq	L262
1748  02d9 cd0000        	call	_assert_failed
1750  02dc               L262:
1751                     ; 494   if (NewState != DISABLE)
1753  02dc 7b02          	ld	a,(OFST+2,sp)
1754  02de 2716          	jreq	L507
1755                     ; 496     switch (CLK_IT)
1757  02e0 7b01          	ld	a,(OFST+1,sp)
1759                     ; 504       default:
1759                     ; 505         break;
1760  02e2 a00c          	sub	a,#12
1761  02e4 270a          	jreq	L146
1762  02e6 a010          	sub	a,#16
1763  02e8 2620          	jrne	L317
1764                     ; 498       case CLK_IT_SWIF: /* Enable the clock switch interrupt */
1764                     ; 499         CLK->SWCR |= CLK_SWCR_SWIEN;
1766  02ea 721450c5      	bset	20677,#2
1767                     ; 500         break;
1769  02ee 201a          	jra	L317
1770  02f0               L146:
1771                     ; 501       case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
1771                     ; 502         CLK->CSSR |= CLK_CSSR_CSSDIE;
1773  02f0 721450c8      	bset	20680,#2
1774                     ; 503         break;
1776  02f4 2014          	jra	L317
1777                     ; 504       default:
1777                     ; 505         break;
1780  02f6               L507:
1781                     ; 510     switch (CLK_IT)
1783  02f6 7b01          	ld	a,(OFST+1,sp)
1785                     ; 518       default:
1785                     ; 519         break;
1786  02f8 a00c          	sub	a,#12
1787  02fa 270a          	jreq	L746
1788  02fc a010          	sub	a,#16
1789  02fe 260a          	jrne	L317
1790                     ; 512       case CLK_IT_SWIF: /* Disable the clock switch interrupt */
1790                     ; 513         CLK->SWCR  &= (u8)(~CLK_SWCR_SWIEN);
1792  0300 721550c5      	bres	20677,#2
1793                     ; 514         break;
1795  0304 2004          	jra	L317
1796  0306               L746:
1797                     ; 515       case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
1797                     ; 516         CLK->CSSR &= (u8)(~CLK_CSSR_CSSDIE);
1799  0306 721550c8      	bres	20680,#2
1800                     ; 517         break;
1801  030a               L317:
1802                     ; 523 }
1805  030a 85            	popw	x
1806  030b 81            	ret	
1807                     ; 518       default:
1807                     ; 519         break;
1844                     ; 532 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef ClockPrescaler)
1844                     ; 533 {
1845                     	switch	.text
1846  030c               _CLK_SYSCLKConfig:
1848  030c 88            	push	a
1849       00000000      OFST:	set	0
1852                     ; 536   assert_param(IS_CLK_PRESCALER_OK(ClockPrescaler));
1854  030d 4d            	tnz	a
1855  030e 272f          	jreq	L472
1856  0310 a108          	cp	a,#8
1857  0312 272b          	jreq	L472
1858  0314 a110          	cp	a,#16
1859  0316 2727          	jreq	L472
1860  0318 a118          	cp	a,#24
1861  031a 2723          	jreq	L472
1862  031c a180          	cp	a,#128
1863  031e 271f          	jreq	L472
1864  0320 a181          	cp	a,#129
1865  0322 271b          	jreq	L472
1866  0324 a182          	cp	a,#130
1867  0326 2717          	jreq	L472
1868  0328 a183          	cp	a,#131
1869  032a 2713          	jreq	L472
1870  032c a184          	cp	a,#132
1871  032e 270f          	jreq	L472
1872  0330 a185          	cp	a,#133
1873  0332 270b          	jreq	L472
1874  0334 a186          	cp	a,#134
1875  0336 2707          	jreq	L472
1876  0338 a187          	cp	a,#135
1877  033a 2703          	jreq	L472
1878  033c cd0000        	call	_assert_failed
1880  033f               L472:
1881                     ; 538   if (((u8)ClockPrescaler & (u8)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
1883  033f 7b01          	ld	a,(OFST+1,sp)
1884  0341 2b0e          	jrmi	L737
1885                     ; 540     CLK->CKDIVR &= (u8)(~CLK_CKDIVR_HSIDIV);
1887  0343 c650c6        	ld	a,20678
1888  0346 a4e7          	and	a,#231
1889  0348 c750c6        	ld	20678,a
1890                     ; 541     CLK->CKDIVR |= (u8)((u8)ClockPrescaler & (u8)CLK_CKDIVR_HSIDIV);
1892  034b 7b01          	ld	a,(OFST+1,sp)
1893  034d a418          	and	a,#24
1895  034f 200c          	jra	L147
1896  0351               L737:
1897                     ; 545     CLK->CKDIVR &= (u8)(~CLK_CKDIVR_CPUDIV);
1899  0351 c650c6        	ld	a,20678
1900  0354 a4f8          	and	a,#248
1901  0356 c750c6        	ld	20678,a
1902                     ; 546     CLK->CKDIVR |= (u8)((u8)ClockPrescaler & (u8)CLK_CKDIVR_CPUDIV);
1904  0359 7b01          	ld	a,(OFST+1,sp)
1905  035b a407          	and	a,#7
1906  035d               L147:
1907  035d ca50c6        	or	a,20678
1908  0360 c750c6        	ld	20678,a
1909                     ; 549 }
1912  0363 84            	pop	a
1913  0364 81            	ret	
1970                     ; 559 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
1970                     ; 560 {
1971                     	switch	.text
1972  0365               _CLK_SWIMConfig:
1974  0365 88            	push	a
1975       00000000      OFST:	set	0
1978                     ; 563   assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
1980  0366 4d            	tnz	a
1981  0367 2706          	jreq	L603
1982  0369 4a            	dec	a
1983  036a 2703          	jreq	L603
1984  036c cd0000        	call	_assert_failed
1986  036f               L603:
1987                     ; 565   if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
1989  036f 7b01          	ld	a,(OFST+1,sp)
1990  0371 2706          	jreq	L177
1991                     ; 568     CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
1993  0373 721050cd      	bset	20685,#0
1995  0377 2004          	jra	L377
1996  0379               L177:
1997                     ; 573     CLK->SWIMCCR &= (u8)(~CLK_SWIMCCR_SWIMDIV);
1999  0379 721150cd      	bres	20685,#0
2000  037d               L377:
2001                     ; 576 }
2004  037d 84            	pop	a
2005  037e 81            	ret	
2103                     ; 587 void CLK_CANConfig(CLK_CANDivider_TypeDef CLK_CANDivider)
2103                     ; 588 {
2104                     	switch	.text
2105  037f               _CLK_CANConfig:
2107  037f 88            	push	a
2108       00000000      OFST:	set	0
2111                     ; 591   assert_param(IS_CLK_CANDIVIDER_OK(CLK_CANDivider));
2113  0380 4d            	tnz	a
2114  0381 271f          	jreq	L023
2115  0383 a101          	cp	a,#1
2116  0385 271b          	jreq	L023
2117  0387 a102          	cp	a,#2
2118  0389 2717          	jreq	L023
2119  038b a103          	cp	a,#3
2120  038d 2713          	jreq	L023
2121  038f a104          	cp	a,#4
2122  0391 270f          	jreq	L023
2123  0393 a105          	cp	a,#5
2124  0395 270b          	jreq	L023
2125  0397 a106          	cp	a,#6
2126  0399 2707          	jreq	L023
2127  039b a107          	cp	a,#7
2128  039d 2703          	jreq	L023
2129  039f cd0000        	call	_assert_failed
2131  03a2               L023:
2132                     ; 594   CLK->CANCCR &= (u8)(~CLK_CANCCR_CANDIV);
2134  03a2 c650cb        	ld	a,20683
2135  03a5 a4f8          	and	a,#248
2136  03a7 c750cb        	ld	20683,a
2137                     ; 597   CLK->CANCCR |= (u8)CLK_CANDivider;
2139  03aa c650cb        	ld	a,20683
2140  03ad 1a01          	or	a,(OFST+1,sp)
2141  03af c750cb        	ld	20683,a
2142                     ; 599 }
2145  03b2 84            	pop	a
2146  03b3 81            	ret	
2170                     ; 611 void CLK_ClockSecuritySystemEnable(void)
2170                     ; 612 {
2171                     	switch	.text
2172  03b4               _CLK_ClockSecuritySystemEnable:
2176                     ; 614   CLK->CSSR |= CLK_CSSR_CSSEN;
2178  03b4 721050c8      	bset	20680,#0
2179                     ; 615 }
2182  03b8 81            	ret	
2207                     ; 626 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
2207                     ; 627 {
2208                     	switch	.text
2209  03b9               _CLK_GetSYSCLKSource:
2213                     ; 628   return((CLK_Source_TypeDef)CLK->CMSR);
2215  03b9 c650c3        	ld	a,20675
2218  03bc 81            	ret	
2281                     ; 640 u32 CLK_GetClockFreq(void)
2281                     ; 641 {
2282                     	switch	.text
2283  03bd               _CLK_GetClockFreq:
2285  03bd 5209          	subw	sp,#9
2286       00000009      OFST:	set	9
2289                     ; 643   u32 clockfrequency = 0;
2291  03bf 96            	ldw	x,sp
2292  03c0 1c0005        	addw	x,#OFST-4
2293  03c3 cd0000        	call	c_ltor
2295                     ; 644   CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
2297                     ; 645   u8 tmp = 0, presc = 0;
2301                     ; 648   clocksource = (CLK_Source_TypeDef)CLK->CMSR;
2303  03c6 c650c3        	ld	a,20675
2304  03c9 6b09          	ld	(OFST+0,sp),a
2305                     ; 650   if (clocksource == CLK_SOURCE_HSI)
2307  03cb a1e1          	cp	a,#225
2308  03cd 2634          	jrne	L1111
2309                     ; 652     tmp = (u8)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
2311  03cf c650c6        	ld	a,20678
2312  03d2 a418          	and	a,#24
2313                     ; 653     tmp = (u8)(tmp >> 3);
2315  03d4 44            	srl	a
2316  03d5 44            	srl	a
2317  03d6 44            	srl	a
2318                     ; 654     presc = HSIDivFactor[tmp];
2320  03d7 5f            	clrw	x
2321  03d8 97            	ld	xl,a
2322  03d9 d60000        	ld	a,(_HSIDivFactor,x)
2323  03dc 6b09          	ld	(OFST+0,sp),a
2324                     ; 655     clockfrequency = HSI_VALUE / presc;
2326  03de b703          	ld	c_lreg+3,a
2327  03e0 3f02          	clr	c_lreg+2
2328  03e2 3f01          	clr	c_lreg+1
2329  03e4 3f00          	clr	c_lreg
2330  03e6 96            	ldw	x,sp
2331  03e7 5c            	incw	x
2332  03e8 cd0000        	call	c_rtol
2334  03eb ae2400        	ldw	x,#9216
2335  03ee bf02          	ldw	c_lreg+2,x
2336  03f0 ae00f4        	ldw	x,#244
2337  03f3 bf00          	ldw	c_lreg,x
2338  03f5 96            	ldw	x,sp
2339  03f6 5c            	incw	x
2340  03f7 cd0000        	call	c_ludv
2342  03fa 96            	ldw	x,sp
2343  03fb 1c0005        	addw	x,#OFST-4
2344  03fe cd0000        	call	c_rtol
2347  0401 2018          	jra	L3111
2348  0403               L1111:
2349                     ; 657   else if ( clocksource == CLK_SOURCE_LSI)
2351  0403 a1d2          	cp	a,#210
2352  0405 260a          	jrne	L5111
2353                     ; 659     clockfrequency = LSI_VALUE;
2355  0407 aef400        	ldw	x,#62464
2356  040a 1f07          	ldw	(OFST-2,sp),x
2357  040c ae0001        	ldw	x,#1
2359  040f 2008          	jp	LC004
2360  0411               L5111:
2361                     ; 663     clockfrequency = HSE_VALUE;
2363  0411 ae3600        	ldw	x,#13824
2364  0414 1f07          	ldw	(OFST-2,sp),x
2365  0416 ae016e        	ldw	x,#366
2366  0419               LC004:
2367  0419 1f05          	ldw	(OFST-4,sp),x
2368  041b               L3111:
2369                     ; 666   return((u32)clockfrequency);
2371  041b 96            	ldw	x,sp
2372  041c 1c0005        	addw	x,#OFST-4
2373  041f cd0000        	call	c_ltor
2377  0422 5b09          	addw	sp,#9
2378  0424 81            	ret	
2478                     ; 679 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2478                     ; 680 {
2479                     	switch	.text
2480  0425               _CLK_AdjustHSICalibrationValue:
2482  0425 88            	push	a
2483       00000000      OFST:	set	0
2486                     ; 683   assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2488  0426 4d            	tnz	a
2489  0427 271f          	jreq	L043
2490  0429 a101          	cp	a,#1
2491  042b 271b          	jreq	L043
2492  042d a102          	cp	a,#2
2493  042f 2717          	jreq	L043
2494  0431 a103          	cp	a,#3
2495  0433 2713          	jreq	L043
2496  0435 a104          	cp	a,#4
2497  0437 270f          	jreq	L043
2498  0439 a105          	cp	a,#5
2499  043b 270b          	jreq	L043
2500  043d a106          	cp	a,#6
2501  043f 2707          	jreq	L043
2502  0441 a107          	cp	a,#7
2503  0443 2703          	jreq	L043
2504  0445 cd0000        	call	_assert_failed
2506  0448               L043:
2507                     ; 686   CLK->HSITRIMR = (u8)((CLK->HSITRIMR & (u8)(~CLK_HSITRIMR_HSITRIM))|((u8)CLK_HSICalibrationValue));
2509  0448 c650cc        	ld	a,20684
2510  044b a4f8          	and	a,#248
2511  044d 1a01          	or	a,(OFST+1,sp)
2512  044f c750cc        	ld	20684,a
2513                     ; 688 }
2516  0452 84            	pop	a
2517  0453 81            	ret	
2541                     ; 702 void CLK_SYSCLKEmergencyClear(void)
2541                     ; 703 {
2542                     	switch	.text
2543  0454               _CLK_SYSCLKEmergencyClear:
2547                     ; 704   CLK->SWCR &= (u8)(~CLK_SWCR_SWBSY);
2549  0454 721150c5      	bres	20677,#0
2550                     ; 705 }
2553  0458 81            	ret	
2707                     ; 716 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2707                     ; 717 {
2708                     	switch	.text
2709  0459               _CLK_GetFlagStatus:
2711  0459 89            	pushw	x
2712  045a 5203          	subw	sp,#3
2713       00000003      OFST:	set	3
2716                     ; 719   u16 statusreg = 0;
2718                     ; 720   u8 tmpreg = 0;
2720                     ; 721   FlagStatus bitstatus = RESET;
2722                     ; 724   assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2724  045c 1e04          	ldw	x,(OFST+1,sp)
2725  045e a30110        	cpw	x,#272
2726  0461 272b          	jreq	L453
2727  0463 a30102        	cpw	x,#258
2728  0466 2726          	jreq	L453
2729  0468 a30202        	cpw	x,#514
2730  046b 2721          	jreq	L453
2731  046d a30308        	cpw	x,#776
2732  0470 271c          	jreq	L453
2733  0472 a30301        	cpw	x,#769
2734  0475 2717          	jreq	L453
2735  0477 a30408        	cpw	x,#1032
2736  047a 2712          	jreq	L453
2737  047c a30402        	cpw	x,#1026
2738  047f 270d          	jreq	L453
2739  0481 a30504        	cpw	x,#1284
2740  0484 2708          	jreq	L453
2741  0486 a30502        	cpw	x,#1282
2742  0489 2703          	jreq	L453
2743  048b cd0000        	call	_assert_failed
2745  048e               L453:
2746                     ; 727   statusreg = (u16)((u16)CLK_FLAG & (u16)0xFF00);
2748  048e 7b04          	ld	a,(OFST+1,sp)
2749  0490 97            	ld	xl,a
2750  0491 4f            	clr	a
2751  0492 02            	rlwa	x,a
2752  0493 1f01          	ldw	(OFST-2,sp),x
2753                     ; 730   if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2755  0495 a30100        	cpw	x,#256
2756  0498 2605          	jrne	L3621
2757                     ; 732     tmpreg = CLK->ICKR;
2759  049a c650c0        	ld	a,20672
2761  049d 2021          	jra	L5621
2762  049f               L3621:
2763                     ; 734   else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2765  049f a30200        	cpw	x,#512
2766  04a2 2605          	jrne	L7621
2767                     ; 736     tmpreg = CLK->ECKR;
2769  04a4 c650c1        	ld	a,20673
2771  04a7 2017          	jra	L5621
2772  04a9               L7621:
2773                     ; 738   else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2775  04a9 a30300        	cpw	x,#768
2776  04ac 2605          	jrne	L3721
2777                     ; 740     tmpreg = CLK->SWCR;
2779  04ae c650c5        	ld	a,20677
2781  04b1 200d          	jra	L5621
2782  04b3               L3721:
2783                     ; 742   else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2785  04b3 a30400        	cpw	x,#1024
2786  04b6 2605          	jrne	L7721
2787                     ; 744     tmpreg = CLK->CSSR;
2789  04b8 c650c8        	ld	a,20680
2791  04bb 2003          	jra	L5621
2792  04bd               L7721:
2793                     ; 748     tmpreg = CLK->CCOR;
2795  04bd c650c9        	ld	a,20681
2796  04c0               L5621:
2797  04c0 6b03          	ld	(OFST+0,sp),a
2798                     ; 751   if ((tmpreg & (u8)CLK_FLAG) != (u8)RESET)
2800  04c2 7b05          	ld	a,(OFST+2,sp)
2801  04c4 1503          	bcp	a,(OFST+0,sp)
2802  04c6 2704          	jreq	L3031
2803                     ; 753     bitstatus = SET;
2805  04c8 a601          	ld	a,#1
2807  04ca 2001          	jra	L5031
2808  04cc               L3031:
2809                     ; 757     bitstatus = RESET;
2811  04cc 4f            	clr	a
2812  04cd               L5031:
2813                     ; 761   return((FlagStatus)bitstatus);
2817  04cd 5b05          	addw	sp,#5
2818  04cf 81            	ret	
2865                     ; 773 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
2865                     ; 774 {
2866                     	switch	.text
2867  04d0               _CLK_GetITStatus:
2869  04d0 88            	push	a
2870  04d1 88            	push	a
2871       00000001      OFST:	set	1
2874                     ; 776   ITStatus bitstatus = RESET;
2876  04d2 0f01          	clr	(OFST+0,sp)
2877                     ; 779   assert_param(IS_CLK_IT_OK(CLK_IT));
2879  04d4 a10c          	cp	a,#12
2880  04d6 2707          	jreq	L663
2881  04d8 a11c          	cp	a,#28
2882  04da 2703          	jreq	L663
2883  04dc cd0000        	call	_assert_failed
2885  04df               L663:
2886                     ; 781   if (CLK_IT == CLK_IT_SWIF)
2888  04df 7b02          	ld	a,(OFST+1,sp)
2889  04e1 a11c          	cp	a,#28
2890  04e3 260b          	jrne	L1331
2891                     ; 784     if ((CLK->SWCR & (u8)CLK_IT) == (u8)0x0C)
2893  04e5 c650c5        	ld	a,20677
2894  04e8 1402          	and	a,(OFST+1,sp)
2895  04ea a10c          	cp	a,#12
2896  04ec 260f          	jrne	L1431
2897                     ; 786       bitstatus = SET;
2899  04ee 2009          	jp	LC006
2900                     ; 790       bitstatus = RESET;
2901  04f0               L1331:
2902                     ; 796     if ((CLK->CSSR & (u8)CLK_IT) == (u8)0x0C)
2904  04f0 c650c8        	ld	a,20680
2905  04f3 1402          	and	a,(OFST+1,sp)
2906  04f5 a10c          	cp	a,#12
2907  04f7 2604          	jrne	L1431
2908                     ; 798       bitstatus = SET;
2910  04f9               LC006:
2912  04f9 a601          	ld	a,#1
2914  04fb 2001          	jra	L7331
2915  04fd               L1431:
2916                     ; 802       bitstatus = RESET;
2919  04fd 4f            	clr	a
2920  04fe               L7331:
2921                     ; 807   return bitstatus;
2925  04fe 85            	popw	x
2926  04ff 81            	ret	
2963                     ; 819 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
2963                     ; 820 {
2964                     	switch	.text
2965  0500               _CLK_ClearITPendingBit:
2967  0500 88            	push	a
2968       00000000      OFST:	set	0
2971                     ; 823   assert_param(IS_CLK_IT_OK(CLK_IT));
2973  0501 a10c          	cp	a,#12
2974  0503 2707          	jreq	L004
2975  0505 a11c          	cp	a,#28
2976  0507 2703          	jreq	L004
2977  0509 cd0000        	call	_assert_failed
2979  050c               L004:
2980                     ; 825   if (CLK_IT == (u8)CLK_IT_CSSD)
2982  050c 7b01          	ld	a,(OFST+1,sp)
2983  050e a10c          	cp	a,#12
2984  0510 2606          	jrne	L3631
2985                     ; 828     CLK->CSSR &= (u8)(~CLK_CSSR_CSSD);
2987  0512 721750c8      	bres	20680,#3
2989  0516 2004          	jra	L5631
2990  0518               L3631:
2991                     ; 833     CLK->SWCR &= (u8)(~CLK_SWCR_SWIF);
2993  0518 721750c5      	bres	20677,#3
2994  051c               L5631:
2995                     ; 836 }
2998  051c 84            	pop	a
2999  051d 81            	ret	
3034                     	xdef	_CLKPrescTable
3035                     	xdef	_HSIDivFactor
3036                     	xdef	_CLK_ClearITPendingBit
3037                     	xdef	_CLK_GetITStatus
3038                     	xdef	_CLK_GetFlagStatus
3039                     	xdef	_CLK_GetSYSCLKSource
3040                     	xdef	_CLK_GetClockFreq
3041                     	xdef	_CLK_AdjustHSICalibrationValue
3042                     	xdef	_CLK_SYSCLKEmergencyClear
3043                     	xdef	_CLK_ClockSecuritySystemEnable
3044                     	xdef	_CLK_CANConfig
3045                     	xdef	_CLK_SWIMConfig
3046                     	xdef	_CLK_SYSCLKConfig
3047                     	xdef	_CLK_ITConfig
3048                     	xdef	_CLK_CCOConfig
3049                     	xdef	_CLK_HSIPrescalerConfig
3050                     	xdef	_CLK_ClockSwitchConfig
3051                     	xdef	_CLK_PeripheralClockConfig
3052                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
3053                     	xdef	_CLK_FastHaltWakeUpCmd
3054                     	xdef	_CLK_ClockSwitchCmd
3055                     	xdef	_CLK_CCOCmd
3056                     	xdef	_CLK_LSICmd
3057                     	xdef	_CLK_HSICmd
3058                     	xdef	_CLK_HSECmd
3059                     	xdef	_CLK_DeInit
3060                     	xref	_assert_failed
3061                     	xref.b	c_lreg
3062                     	xref.b	c_x
3081                     	xref	c_ludv
3082                     	xref	c_rtol
3083                     	xref	c_ltor
3084                     	end
