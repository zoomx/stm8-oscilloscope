   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.8 - 03 Dec 2008
   3                     ; Optimizer V4.2.8 - 03 Dec 2008
  33                     ; 52 void TIM1_DeInit(void)
  33                     ; 53 {
  35                     	switch	.text
  36  0000               _TIM1_DeInit:
  40                     ; 54   TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  42  0000 725f5250      	clr	21072
  43                     ; 55   TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  45  0004 725f5251      	clr	21073
  46                     ; 56   TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  48  0008 725f5252      	clr	21074
  49                     ; 57   TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  51  000c 725f5253      	clr	21075
  52                     ; 58   TIM1->IER  = TIM1_IER_RESET_VALUE;
  54  0010 725f5254      	clr	21076
  55                     ; 59   TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  57  0014 725f5256      	clr	21078
  58                     ; 61   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  60  0018 725f525c      	clr	21084
  61                     ; 62   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  63  001c 725f525d      	clr	21085
  64                     ; 64   TIM1->CCMR1 = 0x01;
  66  0020 35015258      	mov	21080,#1
  67                     ; 65   TIM1->CCMR2 = 0x01;
  69  0024 35015259      	mov	21081,#1
  70                     ; 66   TIM1->CCMR3 = 0x01;
  72  0028 3501525a      	mov	21082,#1
  73                     ; 67   TIM1->CCMR4 = 0x01;
  75  002c 3501525b      	mov	21083,#1
  76                     ; 69   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  78  0030 725f525c      	clr	21084
  79                     ; 70   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  81  0034 725f525d      	clr	21085
  82                     ; 71   TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  84  0038 725f5258      	clr	21080
  85                     ; 72   TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
  87  003c 725f5259      	clr	21081
  88                     ; 73   TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
  90  0040 725f525a      	clr	21082
  91                     ; 74   TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
  93  0044 725f525b      	clr	21083
  94                     ; 75   TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
  96  0048 725f525e      	clr	21086
  97                     ; 76   TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
  99  004c 725f525f      	clr	21087
 100                     ; 77   TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 102  0050 725f5260      	clr	21088
 103                     ; 78   TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 105  0054 725f5261      	clr	21089
 106                     ; 79   TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 108  0058 35ff5262      	mov	21090,#255
 109                     ; 80   TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 111  005c 35ff5263      	mov	21091,#255
 112                     ; 81   TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 114  0060 725f5265      	clr	21093
 115                     ; 82   TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 117  0064 725f5266      	clr	21094
 118                     ; 83   TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 120  0068 725f5267      	clr	21095
 121                     ; 84   TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 123  006c 725f5268      	clr	21096
 124                     ; 85   TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 126  0070 725f5269      	clr	21097
 127                     ; 86   TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 129  0074 725f526a      	clr	21098
 130                     ; 87   TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 132  0078 725f526b      	clr	21099
 133                     ; 88   TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 135  007c 725f526c      	clr	21100
 136                     ; 89   TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 138  0080 725f526f      	clr	21103
 139                     ; 90   TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 141  0084 35015257      	mov	21079,#1
 142                     ; 91   TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 144  0088 725f526e      	clr	21102
 145                     ; 92   TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 147  008c 725f526d      	clr	21101
 148                     ; 93   TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 150  0090 725f5264      	clr	21092
 151                     ; 94   TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 153  0094 725f5255      	clr	21077
 154                     ; 95 }
 157  0098 81            	ret	
 267                     ; 107 void TIM1_TimeBaseInit(u16 TIM1_Prescaler,
 267                     ; 108                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 267                     ; 109                        u16 TIM1_Period,
 267                     ; 110                        u8 TIM1_RepetitionCounter)
 267                     ; 111 {
 268                     	switch	.text
 269  0099               _TIM1_TimeBaseInit:
 271  0099 89            	pushw	x
 272       00000000      OFST:	set	0
 275                     ; 114   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 277  009a 7b05          	ld	a,(OFST+5,sp)
 278  009c 2713          	jreq	L41
 279  009e a110          	cp	a,#16
 280  00a0 270f          	jreq	L41
 281  00a2 a120          	cp	a,#32
 282  00a4 270b          	jreq	L41
 283  00a6 a140          	cp	a,#64
 284  00a8 2707          	jreq	L41
 285  00aa a160          	cp	a,#96
 286  00ac 2703          	jreq	L41
 287  00ae cd0000        	call	_assert_failed
 289  00b1               L41:
 290                     ; 117   TIM1->ARRH = (u8)(TIM1_Period >> 8);
 292  00b1 7b06          	ld	a,(OFST+6,sp)
 293  00b3 c75262        	ld	21090,a
 294                     ; 118   TIM1->ARRL = (u8)(TIM1_Period);
 296  00b6 7b07          	ld	a,(OFST+7,sp)
 297  00b8 c75263        	ld	21091,a
 298                     ; 121   TIM1->PSCRH = (u8)(TIM1_Prescaler >> 8);
 300  00bb 7b01          	ld	a,(OFST+1,sp)
 301  00bd c75260        	ld	21088,a
 302                     ; 122   TIM1->PSCRL = (u8)(TIM1_Prescaler);
 304  00c0 7b02          	ld	a,(OFST+2,sp)
 305  00c2 c75261        	ld	21089,a
 306                     ; 125   TIM1->CR1 = (u8)(((TIM1->CR1) & (u8)(~(TIM1_CR1_CMS | TIM1_CR1_DIR))) | (u8)(TIM1_CounterMode));
 308  00c5 c65250        	ld	a,21072
 309  00c8 a48f          	and	a,#143
 310  00ca 1a05          	or	a,(OFST+5,sp)
 311  00cc c75250        	ld	21072,a
 312                     ; 128   TIM1->RCR = TIM1_RepetitionCounter;
 314  00cf 7b08          	ld	a,(OFST+8,sp)
 315  00d1 c75264        	ld	21092,a
 316                     ; 130 }
 319  00d4 85            	popw	x
 320  00d5 81            	ret	
 606                     ; 146 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 606                     ; 147                   TIM1_OutputState_TypeDef TIM1_OutputState,
 606                     ; 148                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 606                     ; 149                   u16 TIM1_Pulse,
 606                     ; 150                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 606                     ; 151                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 606                     ; 152                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 606                     ; 153                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 606                     ; 154 {
 607                     	switch	.text
 608  00d6               _TIM1_OC1Init:
 610  00d6 89            	pushw	x
 611  00d7 5203          	subw	sp,#3
 612       00000003      OFST:	set	3
 615                     ; 156   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 617  00d9 9e            	ld	a,xh
 618  00da 4d            	tnz	a
 619  00db 271c          	jreq	L62
 620  00dd 9e            	ld	a,xh
 621  00de a110          	cp	a,#16
 622  00e0 2717          	jreq	L62
 623  00e2 9e            	ld	a,xh
 624  00e3 a120          	cp	a,#32
 625  00e5 2712          	jreq	L62
 626  00e7 9e            	ld	a,xh
 627  00e8 a130          	cp	a,#48
 628  00ea 270d          	jreq	L62
 629  00ec 9e            	ld	a,xh
 630  00ed a160          	cp	a,#96
 631  00ef 2708          	jreq	L62
 632  00f1 9e            	ld	a,xh
 633  00f2 a170          	cp	a,#112
 634  00f4 2703          	jreq	L62
 635  00f6 cd0000        	call	_assert_failed
 637  00f9               L62:
 638                     ; 157   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 640  00f9 7b05          	ld	a,(OFST+2,sp)
 641  00fb 2707          	jreq	L63
 642  00fd a111          	cp	a,#17
 643  00ff 2703          	jreq	L63
 644  0101 cd0000        	call	_assert_failed
 646  0104               L63:
 647                     ; 158   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 649  0104 7b08          	ld	a,(OFST+5,sp)
 650  0106 2707          	jreq	L64
 651  0108 a144          	cp	a,#68
 652  010a 2703          	jreq	L64
 653  010c cd0000        	call	_assert_failed
 655  010f               L64:
 656                     ; 159   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 658  010f 7b0b          	ld	a,(OFST+8,sp)
 659  0111 2707          	jreq	L65
 660  0113 a122          	cp	a,#34
 661  0115 2703          	jreq	L65
 662  0117 cd0000        	call	_assert_failed
 664  011a               L65:
 665                     ; 160   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 667  011a 7b0c          	ld	a,(OFST+9,sp)
 668  011c 2707          	jreq	L66
 669  011e a188          	cp	a,#136
 670  0120 2703          	jreq	L66
 671  0122 cd0000        	call	_assert_failed
 673  0125               L66:
 674                     ; 161   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 676  0125 7b0d          	ld	a,(OFST+10,sp)
 677  0127 a155          	cp	a,#85
 678  0129 2707          	jreq	L67
 679  012b 7b0d          	ld	a,(OFST+10,sp)
 680  012d 2703          	jreq	L67
 681  012f cd0000        	call	_assert_failed
 683  0132               L67:
 684                     ; 162   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 686  0132 7b0e          	ld	a,(OFST+11,sp)
 687  0134 a12a          	cp	a,#42
 688  0136 2707          	jreq	L601
 689  0138 7b0e          	ld	a,(OFST+11,sp)
 690  013a 2703          	jreq	L601
 691  013c cd0000        	call	_assert_failed
 693  013f               L601:
 694                     ; 165   TIM1->CCER1 &= (u8)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 696  013f c6525c        	ld	a,21084
 697  0142 a4f0          	and	a,#240
 698  0144 c7525c        	ld	21084,a
 699                     ; 167   TIM1->CCER1 |= (u8)((TIM1_OutputState & TIM1_CCER1_CC1E  ) | (TIM1_OutputNState & TIM1_CCER1_CC1NE ) | (TIM1_OCPolarity  & TIM1_CCER1_CC1P  ) | (TIM1_OCNPolarity & TIM1_CCER1_CC1NP ));
 701  0147 7b0c          	ld	a,(OFST+9,sp)
 702  0149 a408          	and	a,#8
 703  014b 6b03          	ld	(OFST+0,sp),a
 704  014d 7b0b          	ld	a,(OFST+8,sp)
 705  014f a402          	and	a,#2
 706  0151 6b02          	ld	(OFST-1,sp),a
 707  0153 7b08          	ld	a,(OFST+5,sp)
 708  0155 a404          	and	a,#4
 709  0157 6b01          	ld	(OFST-2,sp),a
 710  0159 7b05          	ld	a,(OFST+2,sp)
 711  015b a401          	and	a,#1
 712  015d 1a01          	or	a,(OFST-2,sp)
 713  015f 1a02          	or	a,(OFST-1,sp)
 714  0161 1a03          	or	a,(OFST+0,sp)
 715  0163 ca525c        	or	a,21084
 716  0166 c7525c        	ld	21084,a
 717                     ; 170   TIM1->CCMR1 = (u8)((TIM1->CCMR1 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_OCMode);
 719  0169 c65258        	ld	a,21080
 720  016c a48f          	and	a,#143
 721  016e 1a04          	or	a,(OFST+1,sp)
 722  0170 c75258        	ld	21080,a
 723                     ; 173   TIM1->OISR &= (u8)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 725  0173 c6526f        	ld	a,21103
 726  0176 a4fc          	and	a,#252
 727  0178 c7526f        	ld	21103,a
 728                     ; 175   TIM1->OISR |= (u8)(( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | ( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 730  017b 7b0e          	ld	a,(OFST+11,sp)
 731  017d a402          	and	a,#2
 732  017f 6b03          	ld	(OFST+0,sp),a
 733  0181 7b0d          	ld	a,(OFST+10,sp)
 734  0183 a401          	and	a,#1
 735  0185 1a03          	or	a,(OFST+0,sp)
 736  0187 ca526f        	or	a,21103
 737  018a c7526f        	ld	21103,a
 738                     ; 178   TIM1->CCR1H = (u8)(TIM1_Pulse >> 8);
 740  018d 7b09          	ld	a,(OFST+6,sp)
 741  018f c75265        	ld	21093,a
 742                     ; 179   TIM1->CCR1L = (u8)(TIM1_Pulse);
 744  0192 7b0a          	ld	a,(OFST+7,sp)
 745  0194 c75266        	ld	21094,a
 746                     ; 180 }
 749  0197 5b05          	addw	sp,#5
 750  0199 81            	ret	
 855                     ; 196 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 855                     ; 197                   TIM1_OutputState_TypeDef TIM1_OutputState,
 855                     ; 198                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 855                     ; 199                   u16 TIM1_Pulse,
 855                     ; 200                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 855                     ; 201                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 855                     ; 202                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 855                     ; 203                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 855                     ; 204 {
 856                     	switch	.text
 857  019a               _TIM1_OC2Init:
 859  019a 89            	pushw	x
 860  019b 5203          	subw	sp,#3
 861       00000003      OFST:	set	3
 864                     ; 208   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 866  019d 9e            	ld	a,xh
 867  019e 4d            	tnz	a
 868  019f 271c          	jreq	L021
 869  01a1 9e            	ld	a,xh
 870  01a2 a110          	cp	a,#16
 871  01a4 2717          	jreq	L021
 872  01a6 9e            	ld	a,xh
 873  01a7 a120          	cp	a,#32
 874  01a9 2712          	jreq	L021
 875  01ab 9e            	ld	a,xh
 876  01ac a130          	cp	a,#48
 877  01ae 270d          	jreq	L021
 878  01b0 9e            	ld	a,xh
 879  01b1 a160          	cp	a,#96
 880  01b3 2708          	jreq	L021
 881  01b5 9e            	ld	a,xh
 882  01b6 a170          	cp	a,#112
 883  01b8 2703          	jreq	L021
 884  01ba cd0000        	call	_assert_failed
 886  01bd               L021:
 887                     ; 209   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 889  01bd 7b05          	ld	a,(OFST+2,sp)
 890  01bf 2707          	jreq	L031
 891  01c1 a111          	cp	a,#17
 892  01c3 2703          	jreq	L031
 893  01c5 cd0000        	call	_assert_failed
 895  01c8               L031:
 896                     ; 210   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 898  01c8 7b08          	ld	a,(OFST+5,sp)
 899  01ca 2707          	jreq	L041
 900  01cc a144          	cp	a,#68
 901  01ce 2703          	jreq	L041
 902  01d0 cd0000        	call	_assert_failed
 904  01d3               L041:
 905                     ; 211   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 907  01d3 7b0b          	ld	a,(OFST+8,sp)
 908  01d5 2707          	jreq	L051
 909  01d7 a122          	cp	a,#34
 910  01d9 2703          	jreq	L051
 911  01db cd0000        	call	_assert_failed
 913  01de               L051:
 914                     ; 212   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 916  01de 7b0c          	ld	a,(OFST+9,sp)
 917  01e0 2707          	jreq	L061
 918  01e2 a188          	cp	a,#136
 919  01e4 2703          	jreq	L061
 920  01e6 cd0000        	call	_assert_failed
 922  01e9               L061:
 923                     ; 213   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 925  01e9 7b0d          	ld	a,(OFST+10,sp)
 926  01eb a155          	cp	a,#85
 927  01ed 2707          	jreq	L071
 928  01ef 7b0d          	ld	a,(OFST+10,sp)
 929  01f1 2703          	jreq	L071
 930  01f3 cd0000        	call	_assert_failed
 932  01f6               L071:
 933                     ; 214   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 935  01f6 7b0e          	ld	a,(OFST+11,sp)
 936  01f8 a12a          	cp	a,#42
 937  01fa 2707          	jreq	L002
 938  01fc 7b0e          	ld	a,(OFST+11,sp)
 939  01fe 2703          	jreq	L002
 940  0200 cd0000        	call	_assert_failed
 942  0203               L002:
 943                     ; 217   TIM1->CCER1 &= (u8)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
 945  0203 c6525c        	ld	a,21084
 946  0206 a40f          	and	a,#15
 947  0208 c7525c        	ld	21084,a
 948                     ; 219   TIM1->CCER1 |= (u8)((TIM1_OutputState & TIM1_CCER1_CC2E  ) | (TIM1_OutputNState & TIM1_CCER1_CC2NE ) | (TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | (TIM1_OCNPolarity & TIM1_CCER1_CC2NP ));
 950  020b 7b0c          	ld	a,(OFST+9,sp)
 951  020d a480          	and	a,#128
 952  020f 6b03          	ld	(OFST+0,sp),a
 953  0211 7b0b          	ld	a,(OFST+8,sp)
 954  0213 a420          	and	a,#32
 955  0215 6b02          	ld	(OFST-1,sp),a
 956  0217 7b08          	ld	a,(OFST+5,sp)
 957  0219 a440          	and	a,#64
 958  021b 6b01          	ld	(OFST-2,sp),a
 959  021d 7b05          	ld	a,(OFST+2,sp)
 960  021f a410          	and	a,#16
 961  0221 1a01          	or	a,(OFST-2,sp)
 962  0223 1a02          	or	a,(OFST-1,sp)
 963  0225 1a03          	or	a,(OFST+0,sp)
 964  0227 ca525c        	or	a,21084
 965  022a c7525c        	ld	21084,a
 966                     ; 223   TIM1->CCMR2 = (u8)((TIM1->CCMR2 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_OCMode);
 968  022d c65259        	ld	a,21081
 969  0230 a48f          	and	a,#143
 970  0232 1a04          	or	a,(OFST+1,sp)
 971  0234 c75259        	ld	21081,a
 972                     ; 226   TIM1->OISR &= (u8)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
 974  0237 c6526f        	ld	a,21103
 975  023a a4f3          	and	a,#243
 976  023c c7526f        	ld	21103,a
 977                     ; 228   TIM1->OISR |= (u8)((TIM1_OISR_OIS2 & TIM1_OCIdleState) | (TIM1_OISR_OIS2N & TIM1_OCNIdleState));
 979  023f 7b0e          	ld	a,(OFST+11,sp)
 980  0241 a408          	and	a,#8
 981  0243 6b03          	ld	(OFST+0,sp),a
 982  0245 7b0d          	ld	a,(OFST+10,sp)
 983  0247 a404          	and	a,#4
 984  0249 1a03          	or	a,(OFST+0,sp)
 985  024b ca526f        	or	a,21103
 986  024e c7526f        	ld	21103,a
 987                     ; 231   TIM1->CCR2H = (u8)(TIM1_Pulse >> 8);
 989  0251 7b09          	ld	a,(OFST+6,sp)
 990  0253 c75267        	ld	21095,a
 991                     ; 232   TIM1->CCR2L = (u8)(TIM1_Pulse);
 993  0256 7b0a          	ld	a,(OFST+7,sp)
 994  0258 c75268        	ld	21096,a
 995                     ; 234 }
 998  025b 5b05          	addw	sp,#5
 999  025d 81            	ret	
1104                     ; 250 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1104                     ; 251                   TIM1_OutputState_TypeDef TIM1_OutputState,
1104                     ; 252                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
1104                     ; 253                   u16 TIM1_Pulse,
1104                     ; 254                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1104                     ; 255                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
1104                     ; 256                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
1104                     ; 257                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
1104                     ; 258 {
1105                     	switch	.text
1106  025e               _TIM1_OC3Init:
1108  025e 89            	pushw	x
1109  025f 5203          	subw	sp,#3
1110       00000003      OFST:	set	3
1113                     ; 261   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1115  0261 9e            	ld	a,xh
1116  0262 4d            	tnz	a
1117  0263 271c          	jreq	L212
1118  0265 9e            	ld	a,xh
1119  0266 a110          	cp	a,#16
1120  0268 2717          	jreq	L212
1121  026a 9e            	ld	a,xh
1122  026b a120          	cp	a,#32
1123  026d 2712          	jreq	L212
1124  026f 9e            	ld	a,xh
1125  0270 a130          	cp	a,#48
1126  0272 270d          	jreq	L212
1127  0274 9e            	ld	a,xh
1128  0275 a160          	cp	a,#96
1129  0277 2708          	jreq	L212
1130  0279 9e            	ld	a,xh
1131  027a a170          	cp	a,#112
1132  027c 2703          	jreq	L212
1133  027e cd0000        	call	_assert_failed
1135  0281               L212:
1136                     ; 262   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1138  0281 7b05          	ld	a,(OFST+2,sp)
1139  0283 2707          	jreq	L222
1140  0285 a111          	cp	a,#17
1141  0287 2703          	jreq	L222
1142  0289 cd0000        	call	_assert_failed
1144  028c               L222:
1145                     ; 263   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1147  028c 7b08          	ld	a,(OFST+5,sp)
1148  028e 2707          	jreq	L232
1149  0290 a144          	cp	a,#68
1150  0292 2703          	jreq	L232
1151  0294 cd0000        	call	_assert_failed
1153  0297               L232:
1154                     ; 264   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1156  0297 7b0b          	ld	a,(OFST+8,sp)
1157  0299 2707          	jreq	L242
1158  029b a122          	cp	a,#34
1159  029d 2703          	jreq	L242
1160  029f cd0000        	call	_assert_failed
1162  02a2               L242:
1163                     ; 265   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1165  02a2 7b0c          	ld	a,(OFST+9,sp)
1166  02a4 2707          	jreq	L252
1167  02a6 a188          	cp	a,#136
1168  02a8 2703          	jreq	L252
1169  02aa cd0000        	call	_assert_failed
1171  02ad               L252:
1172                     ; 266   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1174  02ad 7b0d          	ld	a,(OFST+10,sp)
1175  02af a155          	cp	a,#85
1176  02b1 2707          	jreq	L262
1177  02b3 7b0d          	ld	a,(OFST+10,sp)
1178  02b5 2703          	jreq	L262
1179  02b7 cd0000        	call	_assert_failed
1181  02ba               L262:
1182                     ; 267   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1184  02ba 7b0e          	ld	a,(OFST+11,sp)
1185  02bc a12a          	cp	a,#42
1186  02be 2707          	jreq	L272
1187  02c0 7b0e          	ld	a,(OFST+11,sp)
1188  02c2 2703          	jreq	L272
1189  02c4 cd0000        	call	_assert_failed
1191  02c7               L272:
1192                     ; 270   TIM1->CCER2 &= (u8)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
1194  02c7 c6525d        	ld	a,21085
1195  02ca a4f0          	and	a,#240
1196  02cc c7525d        	ld	21085,a
1197                     ; 272   TIM1->CCER2 |= (u8)((TIM1_OutputState  & TIM1_CCER2_CC3E   ) |                 (TIM1_OutputNState & TIM1_CCER2_CC3NE  ) | (TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | (TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  ));
1199  02cf 7b0c          	ld	a,(OFST+9,sp)
1200  02d1 a408          	and	a,#8
1201  02d3 6b03          	ld	(OFST+0,sp),a
1202  02d5 7b0b          	ld	a,(OFST+8,sp)
1203  02d7 a402          	and	a,#2
1204  02d9 6b02          	ld	(OFST-1,sp),a
1205  02db 7b08          	ld	a,(OFST+5,sp)
1206  02dd a404          	and	a,#4
1207  02df 6b01          	ld	(OFST-2,sp),a
1208  02e1 7b05          	ld	a,(OFST+2,sp)
1209  02e3 a401          	and	a,#1
1210  02e5 1a01          	or	a,(OFST-2,sp)
1211  02e7 1a02          	or	a,(OFST-1,sp)
1212  02e9 1a03          	or	a,(OFST+0,sp)
1213  02eb ca525d        	or	a,21085
1214  02ee c7525d        	ld	21085,a
1215                     ; 277   TIM1->CCMR3 = (u8)((TIM1->CCMR3 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_OCMode);
1217  02f1 c6525a        	ld	a,21082
1218  02f4 a48f          	and	a,#143
1219  02f6 1a04          	or	a,(OFST+1,sp)
1220  02f8 c7525a        	ld	21082,a
1221                     ; 280   TIM1->OISR &= (u8)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1223  02fb c6526f        	ld	a,21103
1224  02fe a4cf          	and	a,#207
1225  0300 c7526f        	ld	21103,a
1226                     ; 282   TIM1->OISR |= (u8)((TIM1_OISR_OIS3 & TIM1_OCIdleState) | (TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1228  0303 7b0e          	ld	a,(OFST+11,sp)
1229  0305 a420          	and	a,#32
1230  0307 6b03          	ld	(OFST+0,sp),a
1231  0309 7b0d          	ld	a,(OFST+10,sp)
1232  030b a410          	and	a,#16
1233  030d 1a03          	or	a,(OFST+0,sp)
1234  030f ca526f        	or	a,21103
1235  0312 c7526f        	ld	21103,a
1236                     ; 285   TIM1->CCR3H = (u8)(TIM1_Pulse >> 8);
1238  0315 7b09          	ld	a,(OFST+6,sp)
1239  0317 c75269        	ld	21097,a
1240                     ; 286   TIM1->CCR3L = (u8)(TIM1_Pulse);
1242  031a 7b0a          	ld	a,(OFST+7,sp)
1243  031c c7526a        	ld	21098,a
1244                     ; 288 }
1247  031f 5b05          	addw	sp,#5
1248  0321 81            	ret	
1323                     ; 301 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1323                     ; 302                   TIM1_OutputState_TypeDef TIM1_OutputState,
1323                     ; 303                   u16 TIM1_Pulse,
1323                     ; 304                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1323                     ; 305                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1323                     ; 306 {
1324                     	switch	.text
1325  0322               _TIM1_OC4Init:
1327  0322 89            	pushw	x
1328  0323 88            	push	a
1329       00000001      OFST:	set	1
1332                     ; 309   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1334  0324 9e            	ld	a,xh
1335  0325 4d            	tnz	a
1336  0326 271c          	jreq	L403
1337  0328 9e            	ld	a,xh
1338  0329 a110          	cp	a,#16
1339  032b 2717          	jreq	L403
1340  032d 9e            	ld	a,xh
1341  032e a120          	cp	a,#32
1342  0330 2712          	jreq	L403
1343  0332 9e            	ld	a,xh
1344  0333 a130          	cp	a,#48
1345  0335 270d          	jreq	L403
1346  0337 9e            	ld	a,xh
1347  0338 a160          	cp	a,#96
1348  033a 2708          	jreq	L403
1349  033c 9e            	ld	a,xh
1350  033d a170          	cp	a,#112
1351  033f 2703          	jreq	L403
1352  0341 cd0000        	call	_assert_failed
1354  0344               L403:
1355                     ; 310   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1357  0344 7b03          	ld	a,(OFST+2,sp)
1358  0346 2707          	jreq	L413
1359  0348 a111          	cp	a,#17
1360  034a 2703          	jreq	L413
1361  034c cd0000        	call	_assert_failed
1363  034f               L413:
1364                     ; 311   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1366  034f 7b08          	ld	a,(OFST+7,sp)
1367  0351 2707          	jreq	L423
1368  0353 a122          	cp	a,#34
1369  0355 2703          	jreq	L423
1370  0357 cd0000        	call	_assert_failed
1372  035a               L423:
1373                     ; 312   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1375  035a 7b09          	ld	a,(OFST+8,sp)
1376  035c a155          	cp	a,#85
1377  035e 2707          	jreq	L433
1378  0360 7b09          	ld	a,(OFST+8,sp)
1379  0362 2703          	jreq	L433
1380  0364 cd0000        	call	_assert_failed
1382  0367               L433:
1383                     ; 317   TIM1->CCER2 &= (u8)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1385  0367 c6525d        	ld	a,21085
1386  036a a4cf          	and	a,#207
1387  036c c7525d        	ld	21085,a
1388                     ; 319   TIM1->CCER2 |= (u8)((TIM1_OutputState & TIM1_CCER2_CC4E ) |  (TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1390  036f 7b08          	ld	a,(OFST+7,sp)
1391  0371 a420          	and	a,#32
1392  0373 6b01          	ld	(OFST+0,sp),a
1393  0375 7b03          	ld	a,(OFST+2,sp)
1394  0377 a410          	and	a,#16
1395  0379 1a01          	or	a,(OFST+0,sp)
1396  037b ca525d        	or	a,21085
1397  037e c7525d        	ld	21085,a
1398                     ; 322   TIM1->CCMR4 = (u8)((TIM1->CCMR4 & (u8)(~TIM1_CCMR_OCM)) | (TIM1_OCMode));
1400  0381 c6525b        	ld	a,21083
1401  0384 a48f          	and	a,#143
1402  0386 1a02          	or	a,(OFST+1,sp)
1403  0388 c7525b        	ld	21083,a
1404                     ; 325   if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1406  038b 7b09          	ld	a,(OFST+8,sp)
1407  038d 270a          	jreq	L534
1408                     ; 327     TIM1->OISR |= (u8)(~TIM1_CCER2_CC4P);
1410  038f c6526f        	ld	a,21103
1411  0392 aadf          	or	a,#223
1412  0394 c7526f        	ld	21103,a
1414  0397 2004          	jra	L734
1415  0399               L534:
1416                     ; 331     TIM1->OISR &= (u8)(~TIM1_OISR_OIS4);
1418  0399 721d526f      	bres	21103,#6
1419  039d               L734:
1420                     ; 335   TIM1->CCR4H = (u8)(TIM1_Pulse >> 8);
1422  039d 7b06          	ld	a,(OFST+5,sp)
1423  039f c7526b        	ld	21099,a
1424                     ; 336   TIM1->CCR4L = (u8)(TIM1_Pulse);
1426  03a2 7b07          	ld	a,(OFST+6,sp)
1427  03a4 c7526c        	ld	21100,a
1428                     ; 338 }
1431  03a7 5b03          	addw	sp,#3
1432  03a9 81            	ret	
1638                     ; 353 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1638                     ; 354                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1638                     ; 355                      u8 TIM1_DeadTime,
1638                     ; 356                      TIM1_BreakState_TypeDef TIM1_Break,
1638                     ; 357                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1638                     ; 358                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1638                     ; 359 {
1639                     	switch	.text
1640  03aa               _TIM1_BDTRConfig:
1642  03aa 89            	pushw	x
1643       00000000      OFST:	set	0
1646                     ; 363   assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1648  03ab 9e            	ld	a,xh
1649  03ac a104          	cp	a,#4
1650  03ae 2707          	jreq	L643
1651  03b0 9e            	ld	a,xh
1652  03b1 4d            	tnz	a
1653  03b2 2703          	jreq	L643
1654  03b4 cd0000        	call	_assert_failed
1656  03b7               L643:
1657                     ; 364   assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1659  03b7 7b02          	ld	a,(OFST+2,sp)
1660  03b9 270f          	jreq	L653
1661  03bb a101          	cp	a,#1
1662  03bd 270b          	jreq	L653
1663  03bf a102          	cp	a,#2
1664  03c1 2707          	jreq	L653
1665  03c3 a103          	cp	a,#3
1666  03c5 2703          	jreq	L653
1667  03c7 cd0000        	call	_assert_failed
1669  03ca               L653:
1670                     ; 365   assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1672  03ca 7b06          	ld	a,(OFST+6,sp)
1673  03cc a110          	cp	a,#16
1674  03ce 2707          	jreq	L663
1675  03d0 7b06          	ld	a,(OFST+6,sp)
1676  03d2 2703          	jreq	L663
1677  03d4 cd0000        	call	_assert_failed
1679  03d7               L663:
1680                     ; 366   assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
1682  03d7 7b07          	ld	a,(OFST+7,sp)
1683  03d9 2707          	jreq	L673
1684  03db a120          	cp	a,#32
1685  03dd 2703          	jreq	L673
1686  03df cd0000        	call	_assert_failed
1688  03e2               L673:
1689                     ; 367   assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
1691  03e2 7b08          	ld	a,(OFST+8,sp)
1692  03e4 a140          	cp	a,#64
1693  03e6 2707          	jreq	L604
1694  03e8 7b08          	ld	a,(OFST+8,sp)
1695  03ea 2703          	jreq	L604
1696  03ec cd0000        	call	_assert_failed
1698  03ef               L604:
1699                     ; 370   TIM1->DTR = (u8)(TIM1_DeadTime);
1701  03ef 7b05          	ld	a,(OFST+5,sp)
1702  03f1 c7526e        	ld	21102,a
1703                     ; 374   TIM1->BKR  =  (u8)((u8)TIM1_OSSIState       | \
1703                     ; 375                      (u8)TIM1_LockLevel       | \
1703                     ; 376                      (u8)TIM1_Break           | \
1703                     ; 377                      (u8)TIM1_BreakPolarity   | \
1703                     ; 378                      (u8)TIM1_AutomaticOutput);
1705  03f4 7b01          	ld	a,(OFST+1,sp)
1706  03f6 1a02          	or	a,(OFST+2,sp)
1707  03f8 1a06          	or	a,(OFST+6,sp)
1708  03fa 1a07          	or	a,(OFST+7,sp)
1709  03fc 1a08          	or	a,(OFST+8,sp)
1710  03fe c7526d        	ld	21101,a
1711                     ; 380 }
1714  0401 85            	popw	x
1715  0402 81            	ret	
1918                     ; 403 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
1918                     ; 404                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1918                     ; 405                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
1918                     ; 406                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1918                     ; 407                  u8 TIM1_ICFilter)
1918                     ; 408 {
1919                     	switch	.text
1920  0403               _TIM1_ICInit:
1922  0403 89            	pushw	x
1923       00000000      OFST:	set	0
1926                     ; 411   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
1928  0404 9e            	ld	a,xh
1929  0405 4d            	tnz	a
1930  0406 2711          	jreq	L024
1931  0408 9e            	ld	a,xh
1932  0409 4a            	dec	a
1933  040a 270d          	jreq	L024
1934  040c 9e            	ld	a,xh
1935  040d a102          	cp	a,#2
1936  040f 2708          	jreq	L024
1937  0411 9e            	ld	a,xh
1938  0412 a103          	cp	a,#3
1939  0414 2703          	jreq	L024
1940  0416 cd0000        	call	_assert_failed
1942  0419               L024:
1943                     ; 412   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
1945  0419 7b02          	ld	a,(OFST+2,sp)
1946  041b 2706          	jreq	L034
1947  041d 4a            	dec	a
1948  041e 2703          	jreq	L034
1949  0420 cd0000        	call	_assert_failed
1951  0423               L034:
1952                     ; 413   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
1954  0423 7b05          	ld	a,(OFST+5,sp)
1955  0425 a101          	cp	a,#1
1956  0427 270b          	jreq	L044
1957  0429 a102          	cp	a,#2
1958  042b 2707          	jreq	L044
1959  042d a103          	cp	a,#3
1960  042f 2703          	jreq	L044
1961  0431 cd0000        	call	_assert_failed
1963  0434               L044:
1964                     ; 414   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
1966  0434 7b06          	ld	a,(OFST+6,sp)
1967  0436 270f          	jreq	L054
1968  0438 a104          	cp	a,#4
1969  043a 270b          	jreq	L054
1970  043c a108          	cp	a,#8
1971  043e 2707          	jreq	L054
1972  0440 a10c          	cp	a,#12
1973  0442 2703          	jreq	L054
1974  0444 cd0000        	call	_assert_failed
1976  0447               L054:
1977                     ; 415   assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
1979  0447 7b07          	ld	a,(OFST+7,sp)
1980  0449 a110          	cp	a,#16
1981  044b 2503          	jrult	L654
1982  044d cd0000        	call	_assert_failed
1984  0450               L654:
1985                     ; 417   if (TIM1_Channel == TIM1_CHANNEL_1)
1987  0450 7b01          	ld	a,(OFST+1,sp)
1988  0452 2614          	jrne	L766
1989                     ; 420     TI1_Config((u8)TIM1_ICPolarity,
1989                     ; 421                (u8)TIM1_ICSelection,
1989                     ; 422                (u8)TIM1_ICFilter);
1991  0454 7b07          	ld	a,(OFST+7,sp)
1992  0456 88            	push	a
1993  0457 7b06          	ld	a,(OFST+6,sp)
1994  0459 97            	ld	xl,a
1995  045a 7b03          	ld	a,(OFST+3,sp)
1996  045c 95            	ld	xh,a
1997  045d cd0deb        	call	L3_TI1_Config
1999  0460 84            	pop	a
2000                     ; 424     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2002  0461 7b06          	ld	a,(OFST+6,sp)
2003  0463 cd0bfd        	call	_TIM1_SetIC1Prescaler
2006  0466 2042          	jra	L176
2007  0468               L766:
2008                     ; 426   else if (TIM1_Channel == TIM1_CHANNEL_2)
2010  0468 a101          	cp	a,#1
2011  046a 2614          	jrne	L376
2012                     ; 429     TI2_Config((u8)TIM1_ICPolarity,
2012                     ; 430                (u8)TIM1_ICSelection,
2012                     ; 431                (u8)TIM1_ICFilter);
2014  046c 7b07          	ld	a,(OFST+7,sp)
2015  046e 88            	push	a
2016  046f 7b06          	ld	a,(OFST+6,sp)
2017  0471 97            	ld	xl,a
2018  0472 7b03          	ld	a,(OFST+3,sp)
2019  0474 95            	ld	xh,a
2020  0475 cd0e1b        	call	L5_TI2_Config
2022  0478 84            	pop	a
2023                     ; 433     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2025  0479 7b06          	ld	a,(OFST+6,sp)
2026  047b cd0c1c        	call	_TIM1_SetIC2Prescaler
2029  047e 202a          	jra	L176
2030  0480               L376:
2031                     ; 435   else if (TIM1_Channel == TIM1_CHANNEL_3)
2033  0480 a102          	cp	a,#2
2034  0482 2614          	jrne	L776
2035                     ; 438     TI3_Config((u8)TIM1_ICPolarity,
2035                     ; 439                (u8)TIM1_ICSelection,
2035                     ; 440                (u8)TIM1_ICFilter);
2037  0484 7b07          	ld	a,(OFST+7,sp)
2038  0486 88            	push	a
2039  0487 7b06          	ld	a,(OFST+6,sp)
2040  0489 97            	ld	xl,a
2041  048a 7b03          	ld	a,(OFST+3,sp)
2042  048c 95            	ld	xh,a
2043  048d cd0e4b        	call	L7_TI3_Config
2045  0490 84            	pop	a
2046                     ; 442     TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
2048  0491 7b06          	ld	a,(OFST+6,sp)
2049  0493 cd0c3b        	call	_TIM1_SetIC3Prescaler
2052  0496 2012          	jra	L176
2053  0498               L776:
2054                     ; 447     TI4_Config((u8)TIM1_ICPolarity,
2054                     ; 448                (u8)TIM1_ICSelection,
2054                     ; 449                (u8)TIM1_ICFilter);
2056  0498 7b07          	ld	a,(OFST+7,sp)
2057  049a 88            	push	a
2058  049b 7b06          	ld	a,(OFST+6,sp)
2059  049d 97            	ld	xl,a
2060  049e 7b03          	ld	a,(OFST+3,sp)
2061  04a0 95            	ld	xh,a
2062  04a1 cd0e7b        	call	L11_TI4_Config
2064  04a4 84            	pop	a
2065                     ; 451     TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
2067  04a5 7b06          	ld	a,(OFST+6,sp)
2068  04a7 cd0c5a        	call	_TIM1_SetIC4Prescaler
2070  04aa               L176:
2071                     ; 454 }
2074  04aa 85            	popw	x
2075  04ab 81            	ret	
2172                     ; 472 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
2172                     ; 473                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2172                     ; 474                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
2172                     ; 475                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2172                     ; 476                      u8 TIM1_ICFilter)
2172                     ; 477 {
2173                     	switch	.text
2174  04ac               _TIM1_PWMIConfig:
2176  04ac 89            	pushw	x
2177  04ad 89            	pushw	x
2178       00000002      OFST:	set	2
2181                     ; 478   u8 icpolarity = TIM1_ICPOLARITY_RISING;
2183                     ; 479   u8 icselection = TIM1_ICSELECTION_DIRECTTI;
2185                     ; 482   assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
2187  04ae 7b03          	ld	a,(OFST+1,sp)
2188  04b0 2706          	jreq	L015
2189  04b2 4a            	dec	a
2190  04b3 2703          	jreq	L015
2191  04b5 cd0000        	call	_assert_failed
2193  04b8               L015:
2194                     ; 483   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2196  04b8 7b04          	ld	a,(OFST+2,sp)
2197  04ba 2706          	jreq	L025
2198  04bc 4a            	dec	a
2199  04bd 2703          	jreq	L025
2200  04bf cd0000        	call	_assert_failed
2202  04c2               L025:
2203                     ; 484   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2205  04c2 7b07          	ld	a,(OFST+5,sp)
2206  04c4 a101          	cp	a,#1
2207  04c6 270b          	jreq	L035
2208  04c8 a102          	cp	a,#2
2209  04ca 2707          	jreq	L035
2210  04cc a103          	cp	a,#3
2211  04ce 2703          	jreq	L035
2212  04d0 cd0000        	call	_assert_failed
2214  04d3               L035:
2215                     ; 485   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2217  04d3 7b08          	ld	a,(OFST+6,sp)
2218  04d5 270f          	jreq	L045
2219  04d7 a104          	cp	a,#4
2220  04d9 270b          	jreq	L045
2221  04db a108          	cp	a,#8
2222  04dd 2707          	jreq	L045
2223  04df a10c          	cp	a,#12
2224  04e1 2703          	jreq	L045
2225  04e3 cd0000        	call	_assert_failed
2227  04e6               L045:
2228                     ; 488   if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
2230  04e6 7b04          	ld	a,(OFST+2,sp)
2231  04e8 4a            	dec	a
2232  04e9 2702          	jreq	L157
2233                     ; 490     icpolarity = TIM1_ICPOLARITY_FALLING;
2235  04eb a601          	ld	a,#1
2237  04ed               L157:
2238                     ; 494     icpolarity = TIM1_ICPOLARITY_RISING;
2240  04ed 6b01          	ld	(OFST-1,sp),a
2241                     ; 498   if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
2243  04ef 7b07          	ld	a,(OFST+5,sp)
2244  04f1 4a            	dec	a
2245  04f2 2604          	jrne	L557
2246                     ; 500     icselection = TIM1_ICSELECTION_INDIRECTTI;
2248  04f4 a602          	ld	a,#2
2250  04f6 2002          	jra	L757
2251  04f8               L557:
2252                     ; 504     icselection = TIM1_ICSELECTION_DIRECTTI;
2254  04f8 a601          	ld	a,#1
2255  04fa               L757:
2256  04fa 6b02          	ld	(OFST+0,sp),a
2257                     ; 507   if (TIM1_Channel == TIM1_CHANNEL_1)
2259  04fc 7b03          	ld	a,(OFST+1,sp)
2260  04fe 2626          	jrne	L167
2261                     ; 510     TI1_Config((u8)TIM1_ICPolarity, (u8)TIM1_ICSelection,
2261                     ; 511                (u8)TIM1_ICFilter);
2263  0500 7b09          	ld	a,(OFST+7,sp)
2264  0502 88            	push	a
2265  0503 7b08          	ld	a,(OFST+6,sp)
2266  0505 97            	ld	xl,a
2267  0506 7b05          	ld	a,(OFST+3,sp)
2268  0508 95            	ld	xh,a
2269  0509 cd0deb        	call	L3_TI1_Config
2271  050c 84            	pop	a
2272                     ; 514     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2274  050d 7b08          	ld	a,(OFST+6,sp)
2275  050f cd0bfd        	call	_TIM1_SetIC1Prescaler
2277                     ; 517     TI2_Config(icpolarity, icselection, TIM1_ICFilter);
2279  0512 7b09          	ld	a,(OFST+7,sp)
2280  0514 88            	push	a
2281  0515 7b03          	ld	a,(OFST+1,sp)
2282  0517 97            	ld	xl,a
2283  0518 7b02          	ld	a,(OFST+0,sp)
2284  051a 95            	ld	xh,a
2285  051b cd0e1b        	call	L5_TI2_Config
2287  051e 84            	pop	a
2288                     ; 520     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2290  051f 7b08          	ld	a,(OFST+6,sp)
2291  0521 cd0c1c        	call	_TIM1_SetIC2Prescaler
2294  0524 2024          	jra	L367
2295  0526               L167:
2296                     ; 525     TI2_Config((u8)TIM1_ICPolarity, (u8)TIM1_ICSelection,
2296                     ; 526                (u8)TIM1_ICFilter);
2298  0526 7b09          	ld	a,(OFST+7,sp)
2299  0528 88            	push	a
2300  0529 7b08          	ld	a,(OFST+6,sp)
2301  052b 97            	ld	xl,a
2302  052c 7b05          	ld	a,(OFST+3,sp)
2303  052e 95            	ld	xh,a
2304  052f cd0e1b        	call	L5_TI2_Config
2306  0532 84            	pop	a
2307                     ; 529     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2309  0533 7b08          	ld	a,(OFST+6,sp)
2310  0535 cd0c1c        	call	_TIM1_SetIC2Prescaler
2312                     ; 532     TI1_Config(icpolarity, icselection, TIM1_ICFilter);
2314  0538 7b09          	ld	a,(OFST+7,sp)
2315  053a 88            	push	a
2316  053b 7b03          	ld	a,(OFST+1,sp)
2317  053d 97            	ld	xl,a
2318  053e 7b02          	ld	a,(OFST+0,sp)
2319  0540 95            	ld	xh,a
2320  0541 cd0deb        	call	L3_TI1_Config
2322  0544 84            	pop	a
2323                     ; 535     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2325  0545 7b08          	ld	a,(OFST+6,sp)
2326  0547 cd0bfd        	call	_TIM1_SetIC1Prescaler
2328  054a               L367:
2329                     ; 537 }
2332  054a 5b04          	addw	sp,#4
2333  054c 81            	ret	
2389                     ; 548 void TIM1_Cmd(FunctionalState NewState)
2389                     ; 549 {
2390                     	switch	.text
2391  054d               _TIM1_Cmd:
2393  054d 88            	push	a
2394       00000000      OFST:	set	0
2397                     ; 551   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2399  054e a101          	cp	a,#1
2400  0550 2706          	jreq	L275
2401  0552 4d            	tnz	a
2402  0553 2703          	jreq	L275
2403  0555 cd0000        	call	_assert_failed
2405  0558               L275:
2406                     ; 554   if (NewState != DISABLE)
2408  0558 7b01          	ld	a,(OFST+1,sp)
2409  055a 2706          	jreq	L3101
2410                     ; 556     TIM1->CR1 |= TIM1_CR1_CEN;
2412  055c 72105250      	bset	21072,#0
2414  0560 2004          	jra	L5101
2415  0562               L3101:
2416                     ; 560     TIM1->CR1 &= (u8)(~TIM1_CR1_CEN);
2418  0562 72115250      	bres	21072,#0
2419  0566               L5101:
2420                     ; 562 }
2423  0566 84            	pop	a
2424  0567 81            	ret	
2461                     ; 573 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2461                     ; 574 {
2462                     	switch	.text
2463  0568               _TIM1_CtrlPWMOutputs:
2465  0568 88            	push	a
2466       00000000      OFST:	set	0
2469                     ; 576   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2471  0569 a101          	cp	a,#1
2472  056b 2706          	jreq	L406
2473  056d 4d            	tnz	a
2474  056e 2703          	jreq	L406
2475  0570 cd0000        	call	_assert_failed
2477  0573               L406:
2478                     ; 580   if (NewState != DISABLE)
2480  0573 7b01          	ld	a,(OFST+1,sp)
2481  0575 2706          	jreq	L5301
2482                     ; 582     TIM1->BKR |= TIM1_BKR_MOE;
2484  0577 721e526d      	bset	21101,#7
2486  057b 2004          	jra	L7301
2487  057d               L5301:
2488                     ; 586     TIM1->BKR &= (u8)(~TIM1_BKR_MOE);
2490  057d 721f526d      	bres	21101,#7
2491  0581               L7301:
2492                     ; 588 }
2495  0581 84            	pop	a
2496  0582 81            	ret	
2604                     ; 610 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
2604                     ; 611 {
2605                     	switch	.text
2606  0583               _TIM1_ITConfig:
2608  0583 89            	pushw	x
2609       00000000      OFST:	set	0
2612                     ; 613   assert_param(IS_TIM1_IT_OK(TIM1_IT));
2614  0584 9e            	ld	a,xh
2615  0585 4d            	tnz	a
2616  0586 2603          	jrne	L416
2617  0588 cd0000        	call	_assert_failed
2619  058b               L416:
2620                     ; 614   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2622  058b 7b02          	ld	a,(OFST+2,sp)
2623  058d 4a            	dec	a
2624  058e 2707          	jreq	L426
2625  0590 7b02          	ld	a,(OFST+2,sp)
2626  0592 2703          	jreq	L426
2627  0594 cd0000        	call	_assert_failed
2629  0597               L426:
2630                     ; 616   if (NewState != DISABLE)
2632  0597 7b02          	ld	a,(OFST+2,sp)
2633  0599 2707          	jreq	L7011
2634                     ; 619     TIM1->IER |= (u8)TIM1_IT;
2636  059b c65254        	ld	a,21076
2637  059e 1a01          	or	a,(OFST+1,sp)
2639  05a0 2006          	jra	L1111
2640  05a2               L7011:
2641                     ; 624     TIM1->IER &= (u8)(~(u8)TIM1_IT);
2643  05a2 7b01          	ld	a,(OFST+1,sp)
2644  05a4 43            	cpl	a
2645  05a5 c45254        	and	a,21076
2646  05a8               L1111:
2647  05a8 c75254        	ld	21076,a
2648                     ; 626 }
2651  05ab 85            	popw	x
2652  05ac 81            	ret	
2676                     ; 637 void TIM1_InternalClockConfig(void)
2676                     ; 638 {
2677                     	switch	.text
2678  05ad               _TIM1_InternalClockConfig:
2682                     ; 640   TIM1->SMCR &= (u8)(~TIM1_SMCR_SMS);
2684  05ad c65252        	ld	a,21074
2685  05b0 a4f8          	and	a,#248
2686  05b2 c75252        	ld	21074,a
2687                     ; 641 }
2690  05b5 81            	ret	
2808                     ; 664 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2808                     ; 665                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2808                     ; 666                               u8 ExtTRGFilter)
2808                     ; 667 {
2809                     	switch	.text
2810  05b6               _TIM1_ETRClockMode1Config:
2812  05b6 89            	pushw	x
2813       00000000      OFST:	set	0
2816                     ; 669   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2818  05b7 9e            	ld	a,xh
2819  05b8 4d            	tnz	a
2820  05b9 2712          	jreq	L046
2821  05bb 9e            	ld	a,xh
2822  05bc a110          	cp	a,#16
2823  05be 270d          	jreq	L046
2824  05c0 9e            	ld	a,xh
2825  05c1 a120          	cp	a,#32
2826  05c3 2708          	jreq	L046
2827  05c5 9e            	ld	a,xh
2828  05c6 a130          	cp	a,#48
2829  05c8 2703          	jreq	L046
2830  05ca cd0000        	call	_assert_failed
2832  05cd               L046:
2833                     ; 670   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2835  05cd 7b02          	ld	a,(OFST+2,sp)
2836  05cf a180          	cp	a,#128
2837  05d1 2707          	jreq	L056
2838  05d3 7b02          	ld	a,(OFST+2,sp)
2839  05d5 2703          	jreq	L056
2840  05d7 cd0000        	call	_assert_failed
2842  05da               L056:
2843                     ; 673   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2845  05da 7b05          	ld	a,(OFST+5,sp)
2846  05dc 88            	push	a
2847  05dd 7b03          	ld	a,(OFST+3,sp)
2848  05df 97            	ld	xl,a
2849  05e0 7b02          	ld	a,(OFST+2,sp)
2850  05e2 95            	ld	xh,a
2851  05e3 ad41          	call	_TIM1_ETRConfig
2853  05e5 84            	pop	a
2854                     ; 676   TIM1->SMCR = (u8)((TIM1->SMCR & (u8)(~(TIM1_SMCR_SMS | TIM1_SMCR_TS ))) | (u8)(  TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
2856  05e6 c65252        	ld	a,21074
2857  05e9 aa77          	or	a,#119
2858  05eb c75252        	ld	21074,a
2859                     ; 677 }
2862  05ee 85            	popw	x
2863  05ef 81            	ret	
2922                     ; 700 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2922                     ; 701                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2922                     ; 702                               u8 ExtTRGFilter)
2922                     ; 703 {
2923                     	switch	.text
2924  05f0               _TIM1_ETRClockMode2Config:
2926  05f0 89            	pushw	x
2927       00000000      OFST:	set	0
2930                     ; 705   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2932  05f1 9e            	ld	a,xh
2933  05f2 4d            	tnz	a
2934  05f3 2712          	jreq	L466
2935  05f5 9e            	ld	a,xh
2936  05f6 a110          	cp	a,#16
2937  05f8 270d          	jreq	L466
2938  05fa 9e            	ld	a,xh
2939  05fb a120          	cp	a,#32
2940  05fd 2708          	jreq	L466
2941  05ff 9e            	ld	a,xh
2942  0600 a130          	cp	a,#48
2943  0602 2703          	jreq	L466
2944  0604 cd0000        	call	_assert_failed
2946  0607               L466:
2947                     ; 706   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2949  0607 7b02          	ld	a,(OFST+2,sp)
2950  0609 a180          	cp	a,#128
2951  060b 2707          	jreq	L476
2952  060d 7b02          	ld	a,(OFST+2,sp)
2953  060f 2703          	jreq	L476
2954  0611 cd0000        	call	_assert_failed
2956  0614               L476:
2957                     ; 709   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2959  0614 7b05          	ld	a,(OFST+5,sp)
2960  0616 88            	push	a
2961  0617 7b03          	ld	a,(OFST+3,sp)
2962  0619 97            	ld	xl,a
2963  061a 7b02          	ld	a,(OFST+2,sp)
2964  061c 95            	ld	xh,a
2965  061d ad07          	call	_TIM1_ETRConfig
2967  061f 721c5253      	bset	21075,#6
2968  0623 84            	pop	a
2969                     ; 712   TIM1->ETR |= TIM1_ETR_ECE;
2971                     ; 713 }
2974  0624 85            	popw	x
2975  0625 81            	ret	
3032                     ; 734 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3032                     ; 735                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3032                     ; 736                     u8 ExtTRGFilter)
3032                     ; 737 {
3033                     	switch	.text
3034  0626               _TIM1_ETRConfig:
3036  0626 89            	pushw	x
3037       00000000      OFST:	set	0
3040                     ; 739   assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
3042  0627 7b05          	ld	a,(OFST+5,sp)
3043  0629 a110          	cp	a,#16
3044  062b 2503          	jrult	L607
3045  062d cd0000        	call	_assert_failed
3047  0630               L607:
3048                     ; 741   TIM1->ETR |= (u8)((u8)TIM1_ExtTRGPrescaler |
3048                     ; 742                     (u8)TIM1_ExtTRGPolarity  |
3048                     ; 743                     (u8)ExtTRGFilter          );
3050  0630 7b01          	ld	a,(OFST+1,sp)
3051  0632 1a02          	or	a,(OFST+2,sp)
3052  0634 1a05          	or	a,(OFST+5,sp)
3053  0636 ca5253        	or	a,21075
3054  0639 c75253        	ld	21075,a
3055                     ; 744 }
3058  063c 85            	popw	x
3059  063d 81            	ret	
3149                     ; 766 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
3149                     ; 767                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
3149                     ; 768                                  u8 ICFilter)
3149                     ; 769 {
3150                     	switch	.text
3151  063e               _TIM1_TIxExternalClockConfig:
3153  063e 89            	pushw	x
3154       00000000      OFST:	set	0
3157                     ; 771   assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
3159  063f 9e            	ld	a,xh
3160  0640 a140          	cp	a,#64
3161  0642 270d          	jreq	L027
3162  0644 9e            	ld	a,xh
3163  0645 a160          	cp	a,#96
3164  0647 2708          	jreq	L027
3165  0649 9e            	ld	a,xh
3166  064a a150          	cp	a,#80
3167  064c 2703          	jreq	L027
3168  064e cd0000        	call	_assert_failed
3170  0651               L027:
3171                     ; 772   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
3173  0651 7b02          	ld	a,(OFST+2,sp)
3174  0653 2706          	jreq	L037
3175  0655 4a            	dec	a
3176  0656 2703          	jreq	L037
3177  0658 cd0000        	call	_assert_failed
3179  065b               L037:
3180                     ; 773   assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
3182  065b 7b05          	ld	a,(OFST+5,sp)
3183  065d a110          	cp	a,#16
3184  065f 2503          	jrult	L637
3185  0661 cd0000        	call	_assert_failed
3187  0664               L637:
3188                     ; 776   if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
3190  0664 7b01          	ld	a,(OFST+1,sp)
3191  0666 a160          	cp	a,#96
3192  0668 260e          	jrne	L1131
3193                     ; 778     TI2_Config((u8)TIM1_ICPolarity, (u8)TIM1_ICSELECTION_DIRECTTI, (u8)ICFilter);
3195  066a 7b05          	ld	a,(OFST+5,sp)
3196  066c 88            	push	a
3197  066d ae0001        	ldw	x,#1
3198  0670 7b03          	ld	a,(OFST+3,sp)
3199  0672 95            	ld	xh,a
3200  0673 cd0e1b        	call	L5_TI2_Config
3203  0676 200c          	jra	L3131
3204  0678               L1131:
3205                     ; 782     TI1_Config((u8)TIM1_ICPolarity, (u8)TIM1_ICSELECTION_DIRECTTI, (u8)ICFilter);
3207  0678 7b05          	ld	a,(OFST+5,sp)
3208  067a 88            	push	a
3209  067b ae0001        	ldw	x,#1
3210  067e 7b03          	ld	a,(OFST+3,sp)
3211  0680 95            	ld	xh,a
3212  0681 cd0deb        	call	L3_TI1_Config
3214  0684               L3131:
3215  0684 84            	pop	a
3216                     ; 786   TIM1_SelectInputTrigger(TIM1_TIxExternalCLKSource);
3218  0685 7b01          	ld	a,(OFST+1,sp)
3219  0687 ad0a          	call	_TIM1_SelectInputTrigger
3221                     ; 789   TIM1->SMCR |= (u8)(TIM1_SLAVEMODE_EXTERNAL1);
3223  0689 c65252        	ld	a,21074
3224  068c aa07          	or	a,#7
3225  068e c75252        	ld	21074,a
3226                     ; 790 }
3229  0691 85            	popw	x
3230  0692 81            	ret	
3316                     ; 804 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
3316                     ; 805 {
3317                     	switch	.text
3318  0693               _TIM1_SelectInputTrigger:
3320  0693 88            	push	a
3321       00000000      OFST:	set	0
3324                     ; 807   assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
3326  0694 a140          	cp	a,#64
3327  0696 2716          	jreq	L657
3328  0698 a150          	cp	a,#80
3329  069a 2712          	jreq	L657
3330  069c a160          	cp	a,#96
3331  069e 270e          	jreq	L657
3332  06a0 a170          	cp	a,#112
3333  06a2 270a          	jreq	L657
3334  06a4 a130          	cp	a,#48
3335  06a6 2706          	jreq	L657
3336  06a8 4d            	tnz	a
3337  06a9 2703          	jreq	L657
3338  06ab cd0000        	call	_assert_failed
3340  06ae               L657:
3341                     ; 810   TIM1->SMCR = (u8)((TIM1->SMCR & (u8)(~TIM1_SMCR_TS)) | (u8)TIM1_InputTriggerSource);
3343  06ae c65252        	ld	a,21074
3344  06b1 a48f          	and	a,#143
3345  06b3 1a01          	or	a,(OFST+1,sp)
3346  06b5 c75252        	ld	21074,a
3347                     ; 811 }
3350  06b8 84            	pop	a
3351  06b9 81            	ret	
3388                     ; 823 void TIM1_UpdateDisableConfig(FunctionalState NewState)
3388                     ; 824 {
3389                     	switch	.text
3390  06ba               _TIM1_UpdateDisableConfig:
3392  06ba 88            	push	a
3393       00000000      OFST:	set	0
3396                     ; 826   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3398  06bb a101          	cp	a,#1
3399  06bd 2706          	jreq	L077
3400  06bf 4d            	tnz	a
3401  06c0 2703          	jreq	L077
3402  06c2 cd0000        	call	_assert_failed
3404  06c5               L077:
3405                     ; 829   if (NewState != DISABLE)
3407  06c5 7b01          	ld	a,(OFST+1,sp)
3408  06c7 2706          	jreq	L1731
3409                     ; 831     TIM1->CR1 |= TIM1_CR1_UDIS;
3411  06c9 72125250      	bset	21072,#1
3413  06cd 2004          	jra	L3731
3414  06cf               L1731:
3415                     ; 835     TIM1->CR1 &= (u8)(~TIM1_CR1_UDIS);
3417  06cf 72135250      	bres	21072,#1
3418  06d3               L3731:
3419                     ; 837 }
3422  06d3 84            	pop	a
3423  06d4 81            	ret	
3482                     ; 849 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
3482                     ; 850 {
3483                     	switch	.text
3484  06d5               _TIM1_UpdateRequestConfig:
3486  06d5 88            	push	a
3487       00000000      OFST:	set	0
3490                     ; 852   assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
3492  06d6 4d            	tnz	a
3493  06d7 2706          	jreq	L2001
3494  06d9 4a            	dec	a
3495  06da 2703          	jreq	L2001
3496  06dc cd0000        	call	_assert_failed
3498  06df               L2001:
3499                     ; 855   if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
3501  06df 7b01          	ld	a,(OFST+1,sp)
3502  06e1 2706          	jreq	L3241
3503                     ; 857     TIM1->CR1 |= TIM1_CR1_URS;
3505  06e3 72145250      	bset	21072,#2
3507  06e7 2004          	jra	L5241
3508  06e9               L3241:
3509                     ; 861     TIM1->CR1 &= (u8)(~TIM1_CR1_URS);
3511  06e9 72155250      	bres	21072,#2
3512  06ed               L5241:
3513                     ; 863 }
3516  06ed 84            	pop	a
3517  06ee 81            	ret	
3554                     ; 874 void TIM1_SelectHallSensor(FunctionalState NewState)
3554                     ; 875 {
3555                     	switch	.text
3556  06ef               _TIM1_SelectHallSensor:
3558  06ef 88            	push	a
3559       00000000      OFST:	set	0
3562                     ; 877   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3564  06f0 a101          	cp	a,#1
3565  06f2 2706          	jreq	L4101
3566  06f4 4d            	tnz	a
3567  06f5 2703          	jreq	L4101
3568  06f7 cd0000        	call	_assert_failed
3570  06fa               L4101:
3571                     ; 880   if (NewState != DISABLE)
3573  06fa 7b01          	ld	a,(OFST+1,sp)
3574  06fc 2706          	jreq	L5441
3575                     ; 882     TIM1->CR2 |= TIM1_CR2_TI1S;
3577  06fe 721e5251      	bset	21073,#7
3579  0702 2004          	jra	L7441
3580  0704               L5441:
3581                     ; 886     TIM1->CR2 &= (u8)(~TIM1_CR2_TI1S);
3583  0704 721f5251      	bres	21073,#7
3584  0708               L7441:
3585                     ; 888 }
3588  0708 84            	pop	a
3589  0709 81            	ret	
3647                     ; 901 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
3647                     ; 902 {
3648                     	switch	.text
3649  070a               _TIM1_SelectOnePulseMode:
3651  070a 88            	push	a
3652       00000000      OFST:	set	0
3655                     ; 904   assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
3657  070b a101          	cp	a,#1
3658  070d 2706          	jreq	L6201
3659  070f 4d            	tnz	a
3660  0710 2703          	jreq	L6201
3661  0712 cd0000        	call	_assert_failed
3663  0715               L6201:
3664                     ; 907   if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
3666  0715 7b01          	ld	a,(OFST+1,sp)
3667  0717 2706          	jreq	L7741
3668                     ; 909     TIM1->CR1 |= TIM1_CR1_OPM;
3670  0719 72165250      	bset	21072,#3
3672  071d 2004          	jra	L1051
3673  071f               L7741:
3674                     ; 913     TIM1->CR1 &= (u8)(~TIM1_CR1_OPM);
3676  071f 72175250      	bres	21072,#3
3677  0723               L1051:
3678                     ; 916 }
3681  0723 84            	pop	a
3682  0724 81            	ret	
3781                     ; 934 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
3781                     ; 935 {
3782                     	switch	.text
3783  0725               _TIM1_SelectOutputTrigger:
3785  0725 88            	push	a
3786       00000000      OFST:	set	0
3789                     ; 938   assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
3791  0726 4d            	tnz	a
3792  0727 271b          	jreq	L0401
3793  0729 a110          	cp	a,#16
3794  072b 2717          	jreq	L0401
3795  072d a120          	cp	a,#32
3796  072f 2713          	jreq	L0401
3797  0731 a130          	cp	a,#48
3798  0733 270f          	jreq	L0401
3799  0735 a140          	cp	a,#64
3800  0737 270b          	jreq	L0401
3801  0739 a150          	cp	a,#80
3802  073b 2707          	jreq	L0401
3803  073d a160          	cp	a,#96
3804  073f 2703          	jreq	L0401
3805  0741 cd0000        	call	_assert_failed
3807  0744               L0401:
3808                     ; 940   TIM1->CR2 = (u8)((TIM1->CR2 & (u8)(~TIM1_CR2_MMS    )) | (u8)  TIM1_TRGOSource);
3810  0744 c65251        	ld	a,21073
3811  0747 a48f          	and	a,#143
3812  0749 1a01          	or	a,(OFST+1,sp)
3813  074b c75251        	ld	21073,a
3814                     ; 941 }
3817  074e 84            	pop	a
3818  074f 81            	ret	
3893                     ; 955 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
3893                     ; 956 {
3894                     	switch	.text
3895  0750               _TIM1_SelectSlaveMode:
3897  0750 88            	push	a
3898       00000000      OFST:	set	0
3901                     ; 959   assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
3903  0751 a104          	cp	a,#4
3904  0753 270f          	jreq	L2501
3905  0755 a105          	cp	a,#5
3906  0757 270b          	jreq	L2501
3907  0759 a106          	cp	a,#6
3908  075b 2707          	jreq	L2501
3909  075d a107          	cp	a,#7
3910  075f 2703          	jreq	L2501
3911  0761 cd0000        	call	_assert_failed
3913  0764               L2501:
3914                     ; 962   TIM1->SMCR = (u8)((TIM1->SMCR &  (u8)(~TIM1_SMCR_SMS)) |  (u8)TIM1_SlaveMode);
3916  0764 c65252        	ld	a,21074
3917  0767 a4f8          	and	a,#248
3918  0769 1a01          	or	a,(OFST+1,sp)
3919  076b c75252        	ld	21074,a
3920                     ; 964 }
3923  076e 84            	pop	a
3924  076f 81            	ret	
3961                     ; 974 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
3961                     ; 975 {
3962                     	switch	.text
3963  0770               _TIM1_SelectMasterSlaveMode:
3965  0770 88            	push	a
3966       00000000      OFST:	set	0
3969                     ; 977   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3971  0771 a101          	cp	a,#1
3972  0773 2706          	jreq	L4601
3973  0775 4d            	tnz	a
3974  0776 2703          	jreq	L4601
3975  0778 cd0000        	call	_assert_failed
3977  077b               L4601:
3978                     ; 980   if (NewState != DISABLE)
3980  077b 7b01          	ld	a,(OFST+1,sp)
3981  077d 2706          	jreq	L3161
3982                     ; 982     TIM1->SMCR |= TIM1_SMCR_MSM;
3984  077f 721e5252      	bset	21074,#7
3986  0783 2004          	jra	L5161
3987  0785               L3161:
3988                     ; 986     TIM1->SMCR &= (u8)(~TIM1_SMCR_MSM);
3990  0785 721f5252      	bres	21074,#7
3991  0789               L5161:
3992                     ; 988 }
3995  0789 84            	pop	a
3996  078a 81            	ret	
4083                     ; 1012 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
4083                     ; 1013                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
4083                     ; 1014                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
4083                     ; 1015 {
4084                     	switch	.text
4085  078b               _TIM1_EncoderInterfaceConfig:
4087  078b 89            	pushw	x
4088       00000000      OFST:	set	0
4091                     ; 1019   assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
4093  078c 9e            	ld	a,xh
4094  078d 4a            	dec	a
4095  078e 270d          	jreq	L6701
4096  0790 9e            	ld	a,xh
4097  0791 a102          	cp	a,#2
4098  0793 2708          	jreq	L6701
4099  0795 9e            	ld	a,xh
4100  0796 a103          	cp	a,#3
4101  0798 2703          	jreq	L6701
4102  079a cd0000        	call	_assert_failed
4104  079d               L6701:
4105                     ; 1020   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
4107  079d 7b02          	ld	a,(OFST+2,sp)
4108  079f 2706          	jreq	L6011
4109  07a1 4a            	dec	a
4110  07a2 2703          	jreq	L6011
4111  07a4 cd0000        	call	_assert_failed
4113  07a7               L6011:
4114                     ; 1021   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
4116  07a7 7b05          	ld	a,(OFST+5,sp)
4117  07a9 2706          	jreq	L6111
4118  07ab 4a            	dec	a
4119  07ac 2703          	jreq	L6111
4120  07ae cd0000        	call	_assert_failed
4122  07b1               L6111:
4123                     ; 1024   if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
4125  07b1 7b02          	ld	a,(OFST+2,sp)
4126  07b3 2706          	jreq	L7561
4127                     ; 1026     TIM1->CCER1 |= TIM1_CCER1_CC1P;
4129  07b5 7212525c      	bset	21084,#1
4131  07b9 2004          	jra	L1661
4132  07bb               L7561:
4133                     ; 1030     TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC1P);
4135  07bb 7213525c      	bres	21084,#1
4136  07bf               L1661:
4137                     ; 1033   if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
4139  07bf 7b05          	ld	a,(OFST+5,sp)
4140  07c1 2706          	jreq	L3661
4141                     ; 1035     TIM1->CCER1 |= TIM1_CCER1_CC2P;
4143  07c3 721a525c      	bset	21084,#5
4145  07c7 2004          	jra	L5661
4146  07c9               L3661:
4147                     ; 1039     TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC2P);
4149  07c9 721b525c      	bres	21084,#5
4150  07cd               L5661:
4151                     ; 1042   TIM1->SMCR = (u8)((TIM1->SMCR & (u8)(TIM1_SMCR_MSM | TIM1_SMCR_TS)) | (u8) TIM1_EncoderMode);
4153  07cd c65252        	ld	a,21074
4154  07d0 a4f0          	and	a,#240
4155  07d2 1a01          	or	a,(OFST+1,sp)
4156  07d4 c75252        	ld	21074,a
4157                     ; 1045   TIM1->CCMR1 = (u8)((TIM1->CCMR1 & (u8)(~TIM1_CCMR_CCxS))  | (u8) CCMR_TIxDirect_Set);
4159  07d7 c65258        	ld	a,21080
4160  07da a4fc          	and	a,#252
4161  07dc aa01          	or	a,#1
4162  07de c75258        	ld	21080,a
4163                     ; 1046   TIM1->CCMR2 = (u8)((TIM1->CCMR2 & (u8)(~TIM1_CCMR_CCxS)) | (u8) CCMR_TIxDirect_Set);
4165  07e1 c65259        	ld	a,21081
4166  07e4 a4fc          	and	a,#252
4167  07e6 aa01          	or	a,#1
4168  07e8 c75259        	ld	21081,a
4169                     ; 1048 }
4172  07eb 85            	popw	x
4173  07ec 81            	ret	
4241                     ; 1065 void TIM1_PrescalerConfig(u16 Prescaler,
4241                     ; 1066                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
4241                     ; 1067 {
4242                     	switch	.text
4243  07ed               _TIM1_PrescalerConfig:
4245  07ed 89            	pushw	x
4246       00000000      OFST:	set	0
4249                     ; 1069   assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
4251  07ee 7b05          	ld	a,(OFST+5,sp)
4252  07f0 2706          	jreq	L0311
4253  07f2 4a            	dec	a
4254  07f3 2703          	jreq	L0311
4255  07f5 cd0000        	call	_assert_failed
4257  07f8               L0311:
4258                     ; 1072   TIM1->PSCRH = (u8)(Prescaler >> 8);
4260  07f8 7b01          	ld	a,(OFST+1,sp)
4261  07fa c75260        	ld	21088,a
4262                     ; 1073   TIM1->PSCRL = (u8)(Prescaler);
4264  07fd 7b02          	ld	a,(OFST+2,sp)
4265  07ff c75261        	ld	21089,a
4266                     ; 1076   TIM1->EGR = (u8)TIM1_PSCReloadMode;
4268  0802 7b05          	ld	a,(OFST+5,sp)
4269  0804 c75257        	ld	21079,a
4270                     ; 1078 }
4273  0807 85            	popw	x
4274  0808 81            	ret	
4311                     ; 1093 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
4311                     ; 1094 {
4312                     	switch	.text
4313  0809               _TIM1_CounterModeConfig:
4315  0809 88            	push	a
4316       00000000      OFST:	set	0
4319                     ; 1096   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
4321  080a 4d            	tnz	a
4322  080b 2713          	jreq	L2411
4323  080d a110          	cp	a,#16
4324  080f 270f          	jreq	L2411
4325  0811 a120          	cp	a,#32
4326  0813 270b          	jreq	L2411
4327  0815 a140          	cp	a,#64
4328  0817 2707          	jreq	L2411
4329  0819 a160          	cp	a,#96
4330  081b 2703          	jreq	L2411
4331  081d cd0000        	call	_assert_failed
4333  0820               L2411:
4334                     ; 1100   TIM1->CR1 = (u8)((TIM1->CR1 & (u8)((u8)(~TIM1_CR1_CMS) & (u8)(~TIM1_CR1_DIR))) | (u8)TIM1_CounterMode);
4336  0820 c65250        	ld	a,21072
4337  0823 a48f          	and	a,#143
4338  0825 1a01          	or	a,(OFST+1,sp)
4339  0827 c75250        	ld	21072,a
4340                     ; 1101 }
4343  082a 84            	pop	a
4344  082b 81            	ret	
4403                     ; 1115 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4403                     ; 1116 {
4404                     	switch	.text
4405  082c               _TIM1_ForcedOC1Config:
4407  082c 88            	push	a
4408       00000000      OFST:	set	0
4411                     ; 1118   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4413  082d a150          	cp	a,#80
4414  082f 2707          	jreq	L4511
4415  0831 a140          	cp	a,#64
4416  0833 2703          	jreq	L4511
4417  0835 cd0000        	call	_assert_failed
4419  0838               L4511:
4420                     ; 1121   TIM1->CCMR1 =  (u8)((TIM1->CCMR1 & (u8)(~TIM1_CCMR_OCM))  | (u8)TIM1_ForcedAction);
4422  0838 c65258        	ld	a,21080
4423  083b a48f          	and	a,#143
4424  083d 1a01          	or	a,(OFST+1,sp)
4425  083f c75258        	ld	21080,a
4426                     ; 1122 }
4429  0842 84            	pop	a
4430  0843 81            	ret	
4467                     ; 1136 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4467                     ; 1137 {
4468                     	switch	.text
4469  0844               _TIM1_ForcedOC2Config:
4471  0844 88            	push	a
4472       00000000      OFST:	set	0
4475                     ; 1139   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4477  0845 a150          	cp	a,#80
4478  0847 2707          	jreq	L6611
4479  0849 a140          	cp	a,#64
4480  084b 2703          	jreq	L6611
4481  084d cd0000        	call	_assert_failed
4483  0850               L6611:
4484                     ; 1142   TIM1->CCMR2  =  (u8)((TIM1->CCMR2 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_ForcedAction);
4486  0850 c65259        	ld	a,21081
4487  0853 a48f          	and	a,#143
4488  0855 1a01          	or	a,(OFST+1,sp)
4489  0857 c75259        	ld	21081,a
4490                     ; 1143 }
4493  085a 84            	pop	a
4494  085b 81            	ret	
4531                     ; 1157 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4531                     ; 1158 {
4532                     	switch	.text
4533  085c               _TIM1_ForcedOC3Config:
4535  085c 88            	push	a
4536       00000000      OFST:	set	0
4539                     ; 1160   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4541  085d a150          	cp	a,#80
4542  085f 2707          	jreq	L0021
4543  0861 a140          	cp	a,#64
4544  0863 2703          	jreq	L0021
4545  0865 cd0000        	call	_assert_failed
4547  0868               L0021:
4548                     ; 1163   TIM1->CCMR3  =  (u8)((TIM1->CCMR3 & (u8)(~TIM1_CCMR_OCM))  | (u8)TIM1_ForcedAction);
4550  0868 c6525a        	ld	a,21082
4551  086b a48f          	and	a,#143
4552  086d 1a01          	or	a,(OFST+1,sp)
4553  086f c7525a        	ld	21082,a
4554                     ; 1164 }
4557  0872 84            	pop	a
4558  0873 81            	ret	
4595                     ; 1178 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4595                     ; 1179 {
4596                     	switch	.text
4597  0874               _TIM1_ForcedOC4Config:
4599  0874 88            	push	a
4600       00000000      OFST:	set	0
4603                     ; 1181   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4605  0875 a150          	cp	a,#80
4606  0877 2707          	jreq	L2121
4607  0879 a140          	cp	a,#64
4608  087b 2703          	jreq	L2121
4609  087d cd0000        	call	_assert_failed
4611  0880               L2121:
4612                     ; 1184   TIM1->CCMR4  =  (u8)((TIM1->CCMR4 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_ForcedAction);
4614  0880 c6525b        	ld	a,21083
4615  0883 a48f          	and	a,#143
4616  0885 1a01          	or	a,(OFST+1,sp)
4617  0887 c7525b        	ld	21083,a
4618                     ; 1185 }
4621  088a 84            	pop	a
4622  088b 81            	ret	
4659                     ; 1196 void TIM1_ARRPreloadConfig(FunctionalState NewState)
4659                     ; 1197 {
4660                     	switch	.text
4661  088c               _TIM1_ARRPreloadConfig:
4663  088c 88            	push	a
4664       00000000      OFST:	set	0
4667                     ; 1199   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4669  088d a101          	cp	a,#1
4670  088f 2706          	jreq	L4221
4671  0891 4d            	tnz	a
4672  0892 2703          	jreq	L4221
4673  0894 cd0000        	call	_assert_failed
4675  0897               L4221:
4676                     ; 1202   if (NewState != DISABLE)
4678  0897 7b01          	ld	a,(OFST+1,sp)
4679  0899 2706          	jreq	L5502
4680                     ; 1204     TIM1->CR1 |= TIM1_CR1_ARPE;
4682  089b 721e5250      	bset	21072,#7
4684  089f 2004          	jra	L7502
4685  08a1               L5502:
4686                     ; 1208     TIM1->CR1 &= (u8)(~TIM1_CR1_ARPE);
4688  08a1 721f5250      	bres	21072,#7
4689  08a5               L7502:
4690                     ; 1210 }
4693  08a5 84            	pop	a
4694  08a6 81            	ret	
4730                     ; 1221 void TIM1_SelectCOM(FunctionalState NewState)
4730                     ; 1222 {
4731                     	switch	.text
4732  08a7               _TIM1_SelectCOM:
4734  08a7 88            	push	a
4735       00000000      OFST:	set	0
4738                     ; 1224   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4740  08a8 a101          	cp	a,#1
4741  08aa 2706          	jreq	L6321
4742  08ac 4d            	tnz	a
4743  08ad 2703          	jreq	L6321
4744  08af cd0000        	call	_assert_failed
4746  08b2               L6321:
4747                     ; 1227   if (NewState != DISABLE)
4749  08b2 7b01          	ld	a,(OFST+1,sp)
4750  08b4 2706          	jreq	L7702
4751                     ; 1229     TIM1->CR2 |= TIM1_CR2_COMS;
4753  08b6 72145251      	bset	21073,#2
4755  08ba 2004          	jra	L1012
4756  08bc               L7702:
4757                     ; 1233     TIM1->CR2 &= (u8)(~TIM1_CR2_COMS);
4759  08bc 72155251      	bres	21073,#2
4760  08c0               L1012:
4761                     ; 1235 }
4764  08c0 84            	pop	a
4765  08c1 81            	ret	
4802                     ; 1245 void TIM1_CCPreloadControl(FunctionalState NewState)
4802                     ; 1246 {
4803                     	switch	.text
4804  08c2               _TIM1_CCPreloadControl:
4806  08c2 88            	push	a
4807       00000000      OFST:	set	0
4810                     ; 1248   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4812  08c3 a101          	cp	a,#1
4813  08c5 2706          	jreq	L0521
4814  08c7 4d            	tnz	a
4815  08c8 2703          	jreq	L0521
4816  08ca cd0000        	call	_assert_failed
4818  08cd               L0521:
4819                     ; 1251   if (NewState != DISABLE)
4821  08cd 7b01          	ld	a,(OFST+1,sp)
4822  08cf 2706          	jreq	L1212
4823                     ; 1253     TIM1->CR2 |= TIM1_CR2_CCPC;
4825  08d1 72105251      	bset	21073,#0
4827  08d5 2004          	jra	L3212
4828  08d7               L1212:
4829                     ; 1257     TIM1->CR2 &= (u8)(~TIM1_CR2_CCPC);
4831  08d7 72115251      	bres	21073,#0
4832  08db               L3212:
4833                     ; 1259 }
4836  08db 84            	pop	a
4837  08dc 81            	ret	
4874                     ; 1270 void TIM1_OC1PreloadConfig(FunctionalState NewState)
4874                     ; 1271 {
4875                     	switch	.text
4876  08dd               _TIM1_OC1PreloadConfig:
4878  08dd 88            	push	a
4879       00000000      OFST:	set	0
4882                     ; 1273   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4884  08de a101          	cp	a,#1
4885  08e0 2706          	jreq	L2621
4886  08e2 4d            	tnz	a
4887  08e3 2703          	jreq	L2621
4888  08e5 cd0000        	call	_assert_failed
4890  08e8               L2621:
4891                     ; 1276   if (NewState != DISABLE)
4893  08e8 7b01          	ld	a,(OFST+1,sp)
4894  08ea 2706          	jreq	L3412
4895                     ; 1278     TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
4897  08ec 72165258      	bset	21080,#3
4899  08f0 2004          	jra	L5412
4900  08f2               L3412:
4901                     ; 1282     TIM1->CCMR1 &= (u8)(~TIM1_CCMR_OCxPE);
4903  08f2 72175258      	bres	21080,#3
4904  08f6               L5412:
4905                     ; 1284 }
4908  08f6 84            	pop	a
4909  08f7 81            	ret	
4946                     ; 1295 void TIM1_OC2PreloadConfig(FunctionalState NewState)
4946                     ; 1296 {
4947                     	switch	.text
4948  08f8               _TIM1_OC2PreloadConfig:
4950  08f8 88            	push	a
4951       00000000      OFST:	set	0
4954                     ; 1298   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4956  08f9 a101          	cp	a,#1
4957  08fb 2706          	jreq	L4721
4958  08fd 4d            	tnz	a
4959  08fe 2703          	jreq	L4721
4960  0900 cd0000        	call	_assert_failed
4962  0903               L4721:
4963                     ; 1301   if (NewState != DISABLE)
4965  0903 7b01          	ld	a,(OFST+1,sp)
4966  0905 2706          	jreq	L5612
4967                     ; 1303     TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
4969  0907 72165259      	bset	21081,#3
4971  090b 2004          	jra	L7612
4972  090d               L5612:
4973                     ; 1307     TIM1->CCMR2 &= (u8)(~TIM1_CCMR_OCxPE);
4975  090d 72175259      	bres	21081,#3
4976  0911               L7612:
4977                     ; 1309 }
4980  0911 84            	pop	a
4981  0912 81            	ret	
5018                     ; 1320 void TIM1_OC3PreloadConfig(FunctionalState NewState)
5018                     ; 1321 {
5019                     	switch	.text
5020  0913               _TIM1_OC3PreloadConfig:
5022  0913 88            	push	a
5023       00000000      OFST:	set	0
5026                     ; 1323   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5028  0914 a101          	cp	a,#1
5029  0916 2706          	jreq	L6031
5030  0918 4d            	tnz	a
5031  0919 2703          	jreq	L6031
5032  091b cd0000        	call	_assert_failed
5034  091e               L6031:
5035                     ; 1326   if (NewState != DISABLE)
5037  091e 7b01          	ld	a,(OFST+1,sp)
5038  0920 2706          	jreq	L7022
5039                     ; 1328     TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
5041  0922 7216525a      	bset	21082,#3
5043  0926 2004          	jra	L1122
5044  0928               L7022:
5045                     ; 1332     TIM1->CCMR3 &= (u8)(~TIM1_CCMR_OCxPE);
5047  0928 7217525a      	bres	21082,#3
5048  092c               L1122:
5049                     ; 1334 }
5052  092c 84            	pop	a
5053  092d 81            	ret	
5090                     ; 1346 void TIM1_OC4PreloadConfig(FunctionalState NewState)
5090                     ; 1347 {
5091                     	switch	.text
5092  092e               _TIM1_OC4PreloadConfig:
5094  092e 88            	push	a
5095       00000000      OFST:	set	0
5098                     ; 1349   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5100  092f a101          	cp	a,#1
5101  0931 2706          	jreq	L0231
5102  0933 4d            	tnz	a
5103  0934 2703          	jreq	L0231
5104  0936 cd0000        	call	_assert_failed
5106  0939               L0231:
5107                     ; 1352   if (NewState != DISABLE)
5109  0939 7b01          	ld	a,(OFST+1,sp)
5110  093b 2706          	jreq	L1322
5111                     ; 1354     TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
5113  093d 7216525b      	bset	21083,#3
5115  0941 2004          	jra	L3322
5116  0943               L1322:
5117                     ; 1358     TIM1->CCMR4 &= (u8)(~TIM1_CCMR_OCxPE);
5119  0943 7217525b      	bres	21083,#3
5120  0947               L3322:
5121                     ; 1360 }
5124  0947 84            	pop	a
5125  0948 81            	ret	
5161                     ; 1370 void TIM1_OC1FastConfig(FunctionalState NewState)
5161                     ; 1371 {
5162                     	switch	.text
5163  0949               _TIM1_OC1FastConfig:
5165  0949 88            	push	a
5166       00000000      OFST:	set	0
5169                     ; 1373   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5171  094a a101          	cp	a,#1
5172  094c 2706          	jreq	L2331
5173  094e 4d            	tnz	a
5174  094f 2703          	jreq	L2331
5175  0951 cd0000        	call	_assert_failed
5177  0954               L2331:
5178                     ; 1376   if (NewState != DISABLE)
5180  0954 7b01          	ld	a,(OFST+1,sp)
5181  0956 2706          	jreq	L3522
5182                     ; 1378     TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
5184  0958 72145258      	bset	21080,#2
5186  095c 2004          	jra	L5522
5187  095e               L3522:
5188                     ; 1382     TIM1->CCMR1 &= (u8)(~TIM1_CCMR_OCxFE);
5190  095e 72155258      	bres	21080,#2
5191  0962               L5522:
5192                     ; 1384 }
5195  0962 84            	pop	a
5196  0963 81            	ret	
5232                     ; 1396 void TIM1_OC2FastConfig(FunctionalState NewState)
5232                     ; 1397 {
5233                     	switch	.text
5234  0964               _TIM1_OC2FastConfig:
5236  0964 88            	push	a
5237       00000000      OFST:	set	0
5240                     ; 1399   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5242  0965 a101          	cp	a,#1
5243  0967 2706          	jreq	L4431
5244  0969 4d            	tnz	a
5245  096a 2703          	jreq	L4431
5246  096c cd0000        	call	_assert_failed
5248  096f               L4431:
5249                     ; 1402   if (NewState != DISABLE)
5251  096f 7b01          	ld	a,(OFST+1,sp)
5252  0971 2706          	jreq	L5722
5253                     ; 1404     TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
5255  0973 72145259      	bset	21081,#2
5257  0977 2004          	jra	L7722
5258  0979               L5722:
5259                     ; 1408     TIM1->CCMR2 &= (u8)(~TIM1_CCMR_OCxFE);
5261  0979 72155259      	bres	21081,#2
5262  097d               L7722:
5263                     ; 1410 }
5266  097d 84            	pop	a
5267  097e 81            	ret	
5303                     ; 1421 void TIM1_OC3FastConfig(FunctionalState NewState)
5303                     ; 1422 {
5304                     	switch	.text
5305  097f               _TIM1_OC3FastConfig:
5307  097f 88            	push	a
5308       00000000      OFST:	set	0
5311                     ; 1424   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5313  0980 a101          	cp	a,#1
5314  0982 2706          	jreq	L6531
5315  0984 4d            	tnz	a
5316  0985 2703          	jreq	L6531
5317  0987 cd0000        	call	_assert_failed
5319  098a               L6531:
5320                     ; 1427   if (NewState != DISABLE)
5322  098a 7b01          	ld	a,(OFST+1,sp)
5323  098c 2706          	jreq	L7132
5324                     ; 1429     TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
5326  098e 7214525a      	bset	21082,#2
5328  0992 2004          	jra	L1232
5329  0994               L7132:
5330                     ; 1433     TIM1->CCMR3 &= (u8)(~TIM1_CCMR_OCxFE);
5332  0994 7215525a      	bres	21082,#2
5333  0998               L1232:
5334                     ; 1435 }
5337  0998 84            	pop	a
5338  0999 81            	ret	
5374                     ; 1446 void TIM1_OC4FastConfig(FunctionalState NewState)
5374                     ; 1447 {
5375                     	switch	.text
5376  099a               _TIM1_OC4FastConfig:
5378  099a 88            	push	a
5379       00000000      OFST:	set	0
5382                     ; 1449   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5384  099b a101          	cp	a,#1
5385  099d 2706          	jreq	L0731
5386  099f 4d            	tnz	a
5387  09a0 2703          	jreq	L0731
5388  09a2 cd0000        	call	_assert_failed
5390  09a5               L0731:
5391                     ; 1452   if (NewState != DISABLE)
5393  09a5 7b01          	ld	a,(OFST+1,sp)
5394  09a7 2706          	jreq	L1432
5395                     ; 1454     TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
5397  09a9 7214525b      	bset	21083,#2
5399  09ad 2004          	jra	L3432
5400  09af               L1432:
5401                     ; 1458     TIM1->CCMR4 &= (u8)(~TIM1_CCMR_OCxFE);
5403  09af 7215525b      	bres	21083,#2
5404  09b3               L3432:
5405                     ; 1460 }
5408  09b3 84            	pop	a
5409  09b4 81            	ret	
5515                     ; 1479 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
5515                     ; 1480 {
5516                     	switch	.text
5517  09b5               _TIM1_GenerateEvent:
5519  09b5 88            	push	a
5520       00000000      OFST:	set	0
5523                     ; 1482   assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
5525  09b6 4d            	tnz	a
5526  09b7 2603          	jrne	L0041
5527  09b9 cd0000        	call	_assert_failed
5529  09bc               L0041:
5530                     ; 1485   TIM1->EGR = (u8)TIM1_EventSource;
5532  09bc 7b01          	ld	a,(OFST+1,sp)
5533  09be c75257        	ld	21079,a
5534                     ; 1486 }
5537  09c1 84            	pop	a
5538  09c2 81            	ret	
5575                     ; 1499 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5575                     ; 1500 {
5576                     	switch	.text
5577  09c3               _TIM1_OC1PolarityConfig:
5579  09c3 88            	push	a
5580       00000000      OFST:	set	0
5583                     ; 1502   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5585  09c4 4d            	tnz	a
5586  09c5 2707          	jreq	L2141
5587  09c7 a122          	cp	a,#34
5588  09c9 2703          	jreq	L2141
5589  09cb cd0000        	call	_assert_failed
5591  09ce               L2141:
5592                     ; 1505   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5594  09ce 7b01          	ld	a,(OFST+1,sp)
5595  09d0 2706          	jreq	L5242
5596                     ; 1507     TIM1->CCER1 |= TIM1_CCER1_CC1P;
5598  09d2 7212525c      	bset	21084,#1
5600  09d6 2004          	jra	L7242
5601  09d8               L5242:
5602                     ; 1511     TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC1P);
5604  09d8 7213525c      	bres	21084,#1
5605  09dc               L7242:
5606                     ; 1513 }
5609  09dc 84            	pop	a
5610  09dd 81            	ret	
5647                     ; 1526 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
5647                     ; 1527 {
5648                     	switch	.text
5649  09de               _TIM1_OC1NPolarityConfig:
5651  09de 88            	push	a
5652       00000000      OFST:	set	0
5655                     ; 1529   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
5657  09df 4d            	tnz	a
5658  09e0 2707          	jreq	L4241
5659  09e2 a188          	cp	a,#136
5660  09e4 2703          	jreq	L4241
5661  09e6 cd0000        	call	_assert_failed
5663  09e9               L4241:
5664                     ; 1532   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
5666  09e9 7b01          	ld	a,(OFST+1,sp)
5667  09eb 2706          	jreq	L7442
5668                     ; 1534     TIM1->CCER1 |= TIM1_CCER1_CC1NP;
5670  09ed 7216525c      	bset	21084,#3
5672  09f1 2004          	jra	L1542
5673  09f3               L7442:
5674                     ; 1538     TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC1NP);
5676  09f3 7217525c      	bres	21084,#3
5677  09f7               L1542:
5678                     ; 1540 }
5681  09f7 84            	pop	a
5682  09f8 81            	ret	
5719                     ; 1553 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5719                     ; 1554 {
5720                     	switch	.text
5721  09f9               _TIM1_OC2PolarityConfig:
5723  09f9 88            	push	a
5724       00000000      OFST:	set	0
5727                     ; 1556   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5729  09fa 4d            	tnz	a
5730  09fb 2707          	jreq	L6341
5731  09fd a122          	cp	a,#34
5732  09ff 2703          	jreq	L6341
5733  0a01 cd0000        	call	_assert_failed
5735  0a04               L6341:
5736                     ; 1559   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5738  0a04 7b01          	ld	a,(OFST+1,sp)
5739  0a06 2706          	jreq	L1742
5740                     ; 1561     TIM1->CCER1 |= TIM1_CCER1_CC2P;
5742  0a08 721a525c      	bset	21084,#5
5744  0a0c 2004          	jra	L3742
5745  0a0e               L1742:
5746                     ; 1565     TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC2P);
5748  0a0e 721b525c      	bres	21084,#5
5749  0a12               L3742:
5750                     ; 1567 }
5753  0a12 84            	pop	a
5754  0a13 81            	ret	
5791                     ; 1579 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
5791                     ; 1580 {
5792                     	switch	.text
5793  0a14               _TIM1_OC2NPolarityConfig:
5795  0a14 88            	push	a
5796       00000000      OFST:	set	0
5799                     ; 1582   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
5801  0a15 4d            	tnz	a
5802  0a16 2707          	jreq	L0541
5803  0a18 a188          	cp	a,#136
5804  0a1a 2703          	jreq	L0541
5805  0a1c cd0000        	call	_assert_failed
5807  0a1f               L0541:
5808                     ; 1585   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
5810  0a1f 7b01          	ld	a,(OFST+1,sp)
5811  0a21 2706          	jreq	L3152
5812                     ; 1587     TIM1->CCER1 |= TIM1_CCER1_CC2NP;
5814  0a23 721e525c      	bset	21084,#7
5816  0a27 2004          	jra	L5152
5817  0a29               L3152:
5818                     ; 1591     TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC2NP);
5820  0a29 721f525c      	bres	21084,#7
5821  0a2d               L5152:
5822                     ; 1593 }
5825  0a2d 84            	pop	a
5826  0a2e 81            	ret	
5863                     ; 1606 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5863                     ; 1607 {
5864                     	switch	.text
5865  0a2f               _TIM1_OC3PolarityConfig:
5867  0a2f 88            	push	a
5868       00000000      OFST:	set	0
5871                     ; 1609   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5873  0a30 4d            	tnz	a
5874  0a31 2707          	jreq	L2641
5875  0a33 a122          	cp	a,#34
5876  0a35 2703          	jreq	L2641
5877  0a37 cd0000        	call	_assert_failed
5879  0a3a               L2641:
5880                     ; 1612   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5882  0a3a 7b01          	ld	a,(OFST+1,sp)
5883  0a3c 2706          	jreq	L5352
5884                     ; 1614     TIM1->CCER2 |= TIM1_CCER2_CC3P;
5886  0a3e 7212525d      	bset	21085,#1
5888  0a42 2004          	jra	L7352
5889  0a44               L5352:
5890                     ; 1618     TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC3P);
5892  0a44 7213525d      	bres	21085,#1
5893  0a48               L7352:
5894                     ; 1620 }
5897  0a48 84            	pop	a
5898  0a49 81            	ret	
5935                     ; 1633 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
5935                     ; 1634 {
5936                     	switch	.text
5937  0a4a               _TIM1_OC3NPolarityConfig:
5939  0a4a 88            	push	a
5940       00000000      OFST:	set	0
5943                     ; 1636   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
5945  0a4b 4d            	tnz	a
5946  0a4c 2707          	jreq	L4741
5947  0a4e a188          	cp	a,#136
5948  0a50 2703          	jreq	L4741
5949  0a52 cd0000        	call	_assert_failed
5951  0a55               L4741:
5952                     ; 1639   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
5954  0a55 7b01          	ld	a,(OFST+1,sp)
5955  0a57 2706          	jreq	L7552
5956                     ; 1641     TIM1->CCER2 |= TIM1_CCER2_CC3NP;
5958  0a59 7216525d      	bset	21085,#3
5960  0a5d 2004          	jra	L1652
5961  0a5f               L7552:
5962                     ; 1645     TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC3NP);
5964  0a5f 7217525d      	bres	21085,#3
5965  0a63               L1652:
5966                     ; 1647 }
5969  0a63 84            	pop	a
5970  0a64 81            	ret	
6007                     ; 1659 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6007                     ; 1660 {
6008                     	switch	.text
6009  0a65               _TIM1_OC4PolarityConfig:
6011  0a65 88            	push	a
6012       00000000      OFST:	set	0
6015                     ; 1662   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6017  0a66 4d            	tnz	a
6018  0a67 2707          	jreq	L6051
6019  0a69 a122          	cp	a,#34
6020  0a6b 2703          	jreq	L6051
6021  0a6d cd0000        	call	_assert_failed
6023  0a70               L6051:
6024                     ; 1665   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6026  0a70 7b01          	ld	a,(OFST+1,sp)
6027  0a72 2706          	jreq	L1062
6028                     ; 1667     TIM1->CCER2 |= TIM1_CCER2_CC4P;
6030  0a74 721a525d      	bset	21085,#5
6032  0a78 2004          	jra	L3062
6033  0a7a               L1062:
6034                     ; 1671     TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC4P);
6036  0a7a 721b525d      	bres	21085,#5
6037  0a7e               L3062:
6038                     ; 1673 }
6041  0a7e 84            	pop	a
6042  0a7f 81            	ret	
6088                     ; 1690 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6088                     ; 1691 {
6089                     	switch	.text
6090  0a80               _TIM1_CCxCmd:
6092  0a80 89            	pushw	x
6093       00000000      OFST:	set	0
6096                     ; 1693   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6098  0a81 9e            	ld	a,xh
6099  0a82 4d            	tnz	a
6100  0a83 2711          	jreq	L0251
6101  0a85 9e            	ld	a,xh
6102  0a86 4a            	dec	a
6103  0a87 270d          	jreq	L0251
6104  0a89 9e            	ld	a,xh
6105  0a8a a102          	cp	a,#2
6106  0a8c 2708          	jreq	L0251
6107  0a8e 9e            	ld	a,xh
6108  0a8f a103          	cp	a,#3
6109  0a91 2703          	jreq	L0251
6110  0a93 cd0000        	call	_assert_failed
6112  0a96               L0251:
6113                     ; 1694   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6115  0a96 7b02          	ld	a,(OFST+2,sp)
6116  0a98 4a            	dec	a
6117  0a99 2707          	jreq	L0351
6118  0a9b 7b02          	ld	a,(OFST+2,sp)
6119  0a9d 2703          	jreq	L0351
6120  0a9f cd0000        	call	_assert_failed
6122  0aa2               L0351:
6123                     ; 1696   if (TIM1_Channel == TIM1_CHANNEL_1)
6125  0aa2 7b01          	ld	a,(OFST+1,sp)
6126  0aa4 2610          	jrne	L7262
6127                     ; 1699     if (NewState != DISABLE)
6129  0aa6 7b02          	ld	a,(OFST+2,sp)
6130  0aa8 2706          	jreq	L1362
6131                     ; 1701       TIM1->CCER1 |= TIM1_CCER1_CC1E;
6133  0aaa 7210525c      	bset	21084,#0
6135  0aae 203c          	jra	L5362
6136  0ab0               L1362:
6137                     ; 1705       TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC1E);
6139  0ab0 7211525c      	bres	21084,#0
6140  0ab4 2036          	jra	L5362
6141  0ab6               L7262:
6142                     ; 1709   else if (TIM1_Channel == TIM1_CHANNEL_2)
6144  0ab6 a101          	cp	a,#1
6145  0ab8 2610          	jrne	L7362
6146                     ; 1712     if (NewState != DISABLE)
6148  0aba 7b02          	ld	a,(OFST+2,sp)
6149  0abc 2706          	jreq	L1462
6150                     ; 1714       TIM1->CCER1 |= TIM1_CCER1_CC2E;
6152  0abe 7218525c      	bset	21084,#4
6154  0ac2 2028          	jra	L5362
6155  0ac4               L1462:
6156                     ; 1718       TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC2E);
6158  0ac4 7219525c      	bres	21084,#4
6159  0ac8 2022          	jra	L5362
6160  0aca               L7362:
6161                     ; 1721   else if (TIM1_Channel == TIM1_CHANNEL_3)
6163  0aca a102          	cp	a,#2
6164  0acc 2610          	jrne	L7462
6165                     ; 1724     if (NewState != DISABLE)
6167  0ace 7b02          	ld	a,(OFST+2,sp)
6168  0ad0 2706          	jreq	L1562
6169                     ; 1726       TIM1->CCER2 |= TIM1_CCER2_CC3E;
6171  0ad2 7210525d      	bset	21085,#0
6173  0ad6 2014          	jra	L5362
6174  0ad8               L1562:
6175                     ; 1730       TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC3E);
6177  0ad8 7211525d      	bres	21085,#0
6178  0adc 200e          	jra	L5362
6179  0ade               L7462:
6180                     ; 1736     if (NewState != DISABLE)
6182  0ade 7b02          	ld	a,(OFST+2,sp)
6183  0ae0 2706          	jreq	L7562
6184                     ; 1738       TIM1->CCER2 |= TIM1_CCER2_CC4E;
6186  0ae2 7218525d      	bset	21085,#4
6188  0ae6 2004          	jra	L5362
6189  0ae8               L7562:
6190                     ; 1742       TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC4E);
6192  0ae8 7219525d      	bres	21085,#4
6193  0aec               L5362:
6194                     ; 1745 }
6197  0aec 85            	popw	x
6198  0aed 81            	ret	
6244                     ; 1760 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6244                     ; 1761 {
6245                     	switch	.text
6246  0aee               _TIM1_CCxNCmd:
6248  0aee 89            	pushw	x
6249       00000000      OFST:	set	0
6252                     ; 1763   assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
6254  0aef 9e            	ld	a,xh
6255  0af0 4d            	tnz	a
6256  0af1 270c          	jreq	L2451
6257  0af3 9e            	ld	a,xh
6258  0af4 4a            	dec	a
6259  0af5 2708          	jreq	L2451
6260  0af7 9e            	ld	a,xh
6261  0af8 a102          	cp	a,#2
6262  0afa 2703          	jreq	L2451
6263  0afc cd0000        	call	_assert_failed
6265  0aff               L2451:
6266                     ; 1764   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6268  0aff 7b02          	ld	a,(OFST+2,sp)
6269  0b01 4a            	dec	a
6270  0b02 2707          	jreq	L2551
6271  0b04 7b02          	ld	a,(OFST+2,sp)
6272  0b06 2703          	jreq	L2551
6273  0b08 cd0000        	call	_assert_failed
6275  0b0b               L2551:
6276                     ; 1766   if (TIM1_Channel == TIM1_CHANNEL_1)
6278  0b0b 7b01          	ld	a,(OFST+1,sp)
6279  0b0d 2610          	jrne	L5072
6280                     ; 1769     if (NewState != DISABLE)
6282  0b0f 7b02          	ld	a,(OFST+2,sp)
6283  0b11 2706          	jreq	L7072
6284                     ; 1771       TIM1->CCER1 |= TIM1_CCER1_CC1NE;
6286  0b13 7214525c      	bset	21084,#2
6288  0b17 2027          	jra	L3172
6289  0b19               L7072:
6290                     ; 1775       TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC1NE);
6292  0b19 7215525c      	bres	21084,#2
6293  0b1d 2021          	jra	L3172
6294  0b1f               L5072:
6295                     ; 1778   else if (TIM1_Channel == TIM1_CHANNEL_2)
6297  0b1f 4a            	dec	a
6298  0b20 2610          	jrne	L5172
6299                     ; 1781     if (NewState != DISABLE)
6301  0b22 7b02          	ld	a,(OFST+2,sp)
6302  0b24 2706          	jreq	L7172
6303                     ; 1783       TIM1->CCER1 |= TIM1_CCER1_CC2NE;
6305  0b26 721c525c      	bset	21084,#6
6307  0b2a 2014          	jra	L3172
6308  0b2c               L7172:
6309                     ; 1787       TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC2NE);
6311  0b2c 721d525c      	bres	21084,#6
6312  0b30 200e          	jra	L3172
6313  0b32               L5172:
6314                     ; 1793     if (NewState != DISABLE)
6316  0b32 7b02          	ld	a,(OFST+2,sp)
6317  0b34 2706          	jreq	L5272
6318                     ; 1795       TIM1->CCER2 |= TIM1_CCER2_CC3NE;
6320  0b36 7214525d      	bset	21085,#2
6322  0b3a 2004          	jra	L3172
6323  0b3c               L5272:
6324                     ; 1799       TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC3NE);
6326  0b3c 7215525d      	bres	21085,#2
6327  0b40               L3172:
6328                     ; 1802 }
6331  0b40 85            	popw	x
6332  0b41 81            	ret	
6378                     ; 1828 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
6378                     ; 1829 {
6379                     	switch	.text
6380  0b42               _TIM1_SelectOCxM:
6382  0b42 89            	pushw	x
6383       00000000      OFST:	set	0
6386                     ; 1831   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6388  0b43 9e            	ld	a,xh
6389  0b44 4d            	tnz	a
6390  0b45 2711          	jreq	L4651
6391  0b47 9e            	ld	a,xh
6392  0b48 4a            	dec	a
6393  0b49 270d          	jreq	L4651
6394  0b4b 9e            	ld	a,xh
6395  0b4c a102          	cp	a,#2
6396  0b4e 2708          	jreq	L4651
6397  0b50 9e            	ld	a,xh
6398  0b51 a103          	cp	a,#3
6399  0b53 2703          	jreq	L4651
6400  0b55 cd0000        	call	_assert_failed
6402  0b58               L4651:
6403                     ; 1832   assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
6405  0b58 7b02          	ld	a,(OFST+2,sp)
6406  0b5a 271f          	jreq	L4751
6407  0b5c a110          	cp	a,#16
6408  0b5e 271b          	jreq	L4751
6409  0b60 a120          	cp	a,#32
6410  0b62 2717          	jreq	L4751
6411  0b64 a130          	cp	a,#48
6412  0b66 2713          	jreq	L4751
6413  0b68 a160          	cp	a,#96
6414  0b6a 270f          	jreq	L4751
6415  0b6c a170          	cp	a,#112
6416  0b6e 270b          	jreq	L4751
6417  0b70 a150          	cp	a,#80
6418  0b72 2707          	jreq	L4751
6419  0b74 a140          	cp	a,#64
6420  0b76 2703          	jreq	L4751
6421  0b78 cd0000        	call	_assert_failed
6423  0b7b               L4751:
6424                     ; 1834   if (TIM1_Channel == TIM1_CHANNEL_1)
6426  0b7b 7b01          	ld	a,(OFST+1,sp)
6427  0b7d 2610          	jrne	L3572
6428                     ; 1837     TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC1E);
6430  0b7f 7211525c      	bres	21084,#0
6431                     ; 1840     TIM1->CCMR1 = (u8)((TIM1->CCMR1 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_OCMode);
6433  0b83 c65258        	ld	a,21080
6434  0b86 a48f          	and	a,#143
6435  0b88 1a02          	or	a,(OFST+2,sp)
6436  0b8a c75258        	ld	21080,a
6438  0b8d 2036          	jra	L5572
6439  0b8f               L3572:
6440                     ; 1842   else if (TIM1_Channel == TIM1_CHANNEL_2)
6442  0b8f a101          	cp	a,#1
6443  0b91 2610          	jrne	L7572
6444                     ; 1845     TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC2E);
6446  0b93 7219525c      	bres	21084,#4
6447                     ; 1848     TIM1->CCMR2 = (u8)((TIM1->CCMR2 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_OCMode);
6449  0b97 c65259        	ld	a,21081
6450  0b9a a48f          	and	a,#143
6451  0b9c 1a02          	or	a,(OFST+2,sp)
6452  0b9e c75259        	ld	21081,a
6454  0ba1 2022          	jra	L5572
6455  0ba3               L7572:
6456                     ; 1850   else if (TIM1_Channel == TIM1_CHANNEL_3)
6458  0ba3 a102          	cp	a,#2
6459  0ba5 2610          	jrne	L3672
6460                     ; 1853     TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC3E);
6462  0ba7 7211525d      	bres	21085,#0
6463                     ; 1856     TIM1->CCMR3 = (u8)((TIM1->CCMR3 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_OCMode);
6465  0bab c6525a        	ld	a,21082
6466  0bae a48f          	and	a,#143
6467  0bb0 1a02          	or	a,(OFST+2,sp)
6468  0bb2 c7525a        	ld	21082,a
6470  0bb5 200e          	jra	L5572
6471  0bb7               L3672:
6472                     ; 1861     TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC4E);
6474  0bb7 7219525d      	bres	21085,#4
6475                     ; 1864     TIM1->CCMR4 = (u8)((TIM1->CCMR4 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_OCMode);
6477  0bbb c6525b        	ld	a,21083
6478  0bbe a48f          	and	a,#143
6479  0bc0 1a02          	or	a,(OFST+2,sp)
6480  0bc2 c7525b        	ld	21083,a
6481  0bc5               L5572:
6482                     ; 1866 }
6485  0bc5 85            	popw	x
6486  0bc6 81            	ret	
6520                     ; 1877 void TIM1_SetCounter(u16 Counter)
6520                     ; 1878 {
6521                     	switch	.text
6522  0bc7               _TIM1_SetCounter:
6526                     ; 1880   TIM1->CNTRH = (u8)(Counter >> 8);
6528  0bc7 9e            	ld	a,xh
6529  0bc8 c7525e        	ld	21086,a
6530                     ; 1881   TIM1->CNTRL = (u8)(Counter);
6532  0bcb 9f            	ld	a,xl
6533  0bcc c7525f        	ld	21087,a
6534                     ; 1883 }
6537  0bcf 81            	ret	
6571                     ; 1894 void TIM1_SetAutoreload(u16 Autoreload)
6571                     ; 1895 {
6572                     	switch	.text
6573  0bd0               _TIM1_SetAutoreload:
6577                     ; 1898   TIM1->ARRH = (u8)(Autoreload >> 8);
6579  0bd0 9e            	ld	a,xh
6580  0bd1 c75262        	ld	21090,a
6581                     ; 1899   TIM1->ARRL = (u8)(Autoreload);
6583  0bd4 9f            	ld	a,xl
6584  0bd5 c75263        	ld	21091,a
6585                     ; 1901 }
6588  0bd8 81            	ret	
6622                     ; 1912 void TIM1_SetCompare1(u16 Compare1)
6622                     ; 1913 {
6623                     	switch	.text
6624  0bd9               _TIM1_SetCompare1:
6628                     ; 1915   TIM1->CCR1H = (u8)(Compare1 >> 8);
6630  0bd9 9e            	ld	a,xh
6631  0bda c75265        	ld	21093,a
6632                     ; 1916   TIM1->CCR1L = (u8)(Compare1);
6634  0bdd 9f            	ld	a,xl
6635  0bde c75266        	ld	21094,a
6636                     ; 1918 }
6639  0be1 81            	ret	
6673                     ; 1929 void TIM1_SetCompare2(u16 Compare2)
6673                     ; 1930 {
6674                     	switch	.text
6675  0be2               _TIM1_SetCompare2:
6679                     ; 1932   TIM1->CCR2H = (u8)(Compare2 >> 8);
6681  0be2 9e            	ld	a,xh
6682  0be3 c75267        	ld	21095,a
6683                     ; 1933   TIM1->CCR2L = (u8)(Compare2);
6685  0be6 9f            	ld	a,xl
6686  0be7 c75268        	ld	21096,a
6687                     ; 1935 }
6690  0bea 81            	ret	
6724                     ; 1946 void TIM1_SetCompare3(u16 Compare3)
6724                     ; 1947 {
6725                     	switch	.text
6726  0beb               _TIM1_SetCompare3:
6730                     ; 1949   TIM1->CCR3H = (u8)(Compare3 >> 8);
6732  0beb 9e            	ld	a,xh
6733  0bec c75269        	ld	21097,a
6734                     ; 1950   TIM1->CCR3L = (u8)(Compare3);
6736  0bef 9f            	ld	a,xl
6737  0bf0 c7526a        	ld	21098,a
6738                     ; 1952 }
6741  0bf3 81            	ret	
6775                     ; 1963 void TIM1_SetCompare4(u16 Compare4)
6775                     ; 1964 {
6776                     	switch	.text
6777  0bf4               _TIM1_SetCompare4:
6781                     ; 1966   TIM1->CCR4H = (u8)(Compare4 >> 8);
6783  0bf4 9e            	ld	a,xh
6784  0bf5 c7526b        	ld	21099,a
6785                     ; 1967   TIM1->CCR4L = (u8)(Compare4);
6787  0bf8 9f            	ld	a,xl
6788  0bf9 c7526c        	ld	21100,a
6789                     ; 1968 }
6792  0bfc 81            	ret	
6829                     ; 1983 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
6829                     ; 1984 {
6830                     	switch	.text
6831  0bfd               _TIM1_SetIC1Prescaler:
6833  0bfd 88            	push	a
6834       00000000      OFST:	set	0
6837                     ; 1986   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
6839  0bfe 4d            	tnz	a
6840  0bff 270f          	jreq	L2261
6841  0c01 a104          	cp	a,#4
6842  0c03 270b          	jreq	L2261
6843  0c05 a108          	cp	a,#8
6844  0c07 2707          	jreq	L2261
6845  0c09 a10c          	cp	a,#12
6846  0c0b 2703          	jreq	L2261
6847  0c0d cd0000        	call	_assert_failed
6849  0c10               L2261:
6850                     ; 1989   TIM1->CCMR1 = (u8)((TIM1->CCMR1 & (u8)(~TIM1_CCMR_ICxPSC)) | (u8)TIM1_IC1Prescaler);
6852  0c10 c65258        	ld	a,21080
6853  0c13 a4f3          	and	a,#243
6854  0c15 1a01          	or	a,(OFST+1,sp)
6855  0c17 c75258        	ld	21080,a
6856                     ; 1991 }
6859  0c1a 84            	pop	a
6860  0c1b 81            	ret	
6897                     ; 2005 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
6897                     ; 2006 {
6898                     	switch	.text
6899  0c1c               _TIM1_SetIC2Prescaler:
6901  0c1c 88            	push	a
6902       00000000      OFST:	set	0
6905                     ; 2009   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
6907  0c1d 4d            	tnz	a
6908  0c1e 270f          	jreq	L4361
6909  0c20 a104          	cp	a,#4
6910  0c22 270b          	jreq	L4361
6911  0c24 a108          	cp	a,#8
6912  0c26 2707          	jreq	L4361
6913  0c28 a10c          	cp	a,#12
6914  0c2a 2703          	jreq	L4361
6915  0c2c cd0000        	call	_assert_failed
6917  0c2f               L4361:
6918                     ; 2012   TIM1->CCMR2 = (u8)((TIM1->CCMR2 & (u8)(~TIM1_CCMR_ICxPSC)) | (u8)TIM1_IC2Prescaler);
6920  0c2f c65259        	ld	a,21081
6921  0c32 a4f3          	and	a,#243
6922  0c34 1a01          	or	a,(OFST+1,sp)
6923  0c36 c75259        	ld	21081,a
6924                     ; 2013 }
6927  0c39 84            	pop	a
6928  0c3a 81            	ret	
6965                     ; 2028 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
6965                     ; 2029 {
6966                     	switch	.text
6967  0c3b               _TIM1_SetIC3Prescaler:
6969  0c3b 88            	push	a
6970       00000000      OFST:	set	0
6973                     ; 2032   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
6975  0c3c 4d            	tnz	a
6976  0c3d 270f          	jreq	L6461
6977  0c3f a104          	cp	a,#4
6978  0c41 270b          	jreq	L6461
6979  0c43 a108          	cp	a,#8
6980  0c45 2707          	jreq	L6461
6981  0c47 a10c          	cp	a,#12
6982  0c49 2703          	jreq	L6461
6983  0c4b cd0000        	call	_assert_failed
6985  0c4e               L6461:
6986                     ; 2035   TIM1->CCMR3 = (u8)((TIM1->CCMR3 & (u8)(~TIM1_CCMR_ICxPSC)) | (u8)TIM1_IC3Prescaler);
6988  0c4e c6525a        	ld	a,21082
6989  0c51 a4f3          	and	a,#243
6990  0c53 1a01          	or	a,(OFST+1,sp)
6991  0c55 c7525a        	ld	21082,a
6992                     ; 2036 }
6995  0c58 84            	pop	a
6996  0c59 81            	ret	
7033                     ; 2051 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
7033                     ; 2052 {
7034                     	switch	.text
7035  0c5a               _TIM1_SetIC4Prescaler:
7037  0c5a 88            	push	a
7038       00000000      OFST:	set	0
7041                     ; 2055   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
7043  0c5b 4d            	tnz	a
7044  0c5c 270f          	jreq	L0661
7045  0c5e a104          	cp	a,#4
7046  0c60 270b          	jreq	L0661
7047  0c62 a108          	cp	a,#8
7048  0c64 2707          	jreq	L0661
7049  0c66 a10c          	cp	a,#12
7050  0c68 2703          	jreq	L0661
7051  0c6a cd0000        	call	_assert_failed
7053  0c6d               L0661:
7054                     ; 2058   TIM1->CCMR4 = (u8)((TIM1->CCMR4 & (u8)(~TIM1_CCMR_ICxPSC)) | (u8)TIM1_IC4Prescaler);
7056  0c6d c6525b        	ld	a,21083
7057  0c70 a4f3          	and	a,#243
7058  0c72 1a01          	or	a,(OFST+1,sp)
7059  0c74 c7525b        	ld	21083,a
7060                     ; 2059 }
7063  0c77 84            	pop	a
7064  0c78 81            	ret	
7116                     ; 2070 u16 TIM1_GetCapture1(void)
7116                     ; 2071 {
7117                     	switch	.text
7118  0c79               _TIM1_GetCapture1:
7120  0c79 5204          	subw	sp,#4
7121       00000004      OFST:	set	4
7124                     ; 2074   u16 tmpccr1 = 0;
7126                     ; 2075   u8 tmpccr1l=0, tmpccr1h=0;
7130                     ; 2077     tmpccr1h = TIM1->CCR1H;
7132  0c7b c65265        	ld	a,21093
7133  0c7e 6b02          	ld	(OFST-2,sp),a
7134                     ; 2078 	tmpccr1l = TIM1->CCR1L;
7136  0c80 c65266        	ld	a,21094
7137  0c83 6b01          	ld	(OFST-3,sp),a
7138                     ; 2080     tmpccr1 = (u16)(tmpccr1l);
7140  0c85 5f            	clrw	x
7141  0c86 97            	ld	xl,a
7142  0c87 1f03          	ldw	(OFST-1,sp),x
7143                     ; 2081     tmpccr1 |= (u16)((u16)tmpccr1h << 8);
7145  0c89 7b02          	ld	a,(OFST-2,sp)
7146  0c8b 97            	ld	xl,a
7147  0c8c 7b04          	ld	a,(OFST+0,sp)
7148  0c8e 01            	rrwa	x,a
7149  0c8f 1a03          	or	a,(OFST-1,sp)
7150  0c91 01            	rrwa	x,a
7151                     ; 2083     return (u16)tmpccr1;
7155  0c92 5b04          	addw	sp,#4
7156  0c94 81            	ret	
7208                     ; 2094 u16 TIM1_GetCapture2(void)
7208                     ; 2095 {
7209                     	switch	.text
7210  0c95               _TIM1_GetCapture2:
7212  0c95 5204          	subw	sp,#4
7213       00000004      OFST:	set	4
7216                     ; 2098   u16 tmpccr2 = 0;
7218                     ; 2099   u8 tmpccr2l=0, tmpccr2h=0;
7222                     ; 2101     tmpccr2h = TIM1->CCR2H;
7224  0c97 c65267        	ld	a,21095
7225  0c9a 6b02          	ld	(OFST-2,sp),a
7226                     ; 2102 	tmpccr2l = TIM1->CCR2L;
7228  0c9c c65268        	ld	a,21096
7229  0c9f 6b01          	ld	(OFST-3,sp),a
7230                     ; 2104     tmpccr2 = (u16)(tmpccr2l);
7232  0ca1 5f            	clrw	x
7233  0ca2 97            	ld	xl,a
7234  0ca3 1f03          	ldw	(OFST-1,sp),x
7235                     ; 2105     tmpccr2 |= (u16)((u16)tmpccr2h << 8);
7237  0ca5 7b02          	ld	a,(OFST-2,sp)
7238  0ca7 97            	ld	xl,a
7239  0ca8 7b04          	ld	a,(OFST+0,sp)
7240  0caa 01            	rrwa	x,a
7241  0cab 1a03          	or	a,(OFST-1,sp)
7242  0cad 01            	rrwa	x,a
7243                     ; 2107     return (u16)tmpccr2;
7247  0cae 5b04          	addw	sp,#4
7248  0cb0 81            	ret	
7300                     ; 2118 u16 TIM1_GetCapture3(void)
7300                     ; 2119 {
7301                     	switch	.text
7302  0cb1               _TIM1_GetCapture3:
7304  0cb1 5204          	subw	sp,#4
7305       00000004      OFST:	set	4
7308                     ; 2121     u16 tmpccr3 = 0;
7310                     ; 2122   u8 tmpccr3l=0, tmpccr3h=0;
7314                     ; 2124     tmpccr3h = TIM1->CCR3H;
7316  0cb3 c65269        	ld	a,21097
7317  0cb6 6b02          	ld	(OFST-2,sp),a
7318                     ; 2125 	tmpccr3l = TIM1->CCR3L;
7320  0cb8 c6526a        	ld	a,21098
7321  0cbb 6b01          	ld	(OFST-3,sp),a
7322                     ; 2127     tmpccr3 = (u16)(tmpccr3l);
7324  0cbd 5f            	clrw	x
7325  0cbe 97            	ld	xl,a
7326  0cbf 1f03          	ldw	(OFST-1,sp),x
7327                     ; 2128     tmpccr3 |= (u16)((u16)tmpccr3h << 8);
7329  0cc1 7b02          	ld	a,(OFST-2,sp)
7330  0cc3 97            	ld	xl,a
7331  0cc4 7b04          	ld	a,(OFST+0,sp)
7332  0cc6 01            	rrwa	x,a
7333  0cc7 1a03          	or	a,(OFST-1,sp)
7334  0cc9 01            	rrwa	x,a
7335                     ; 2130     return (u16)tmpccr3;
7339  0cca 5b04          	addw	sp,#4
7340  0ccc 81            	ret	
7392                     ; 2141 u16 TIM1_GetCapture4(void)
7392                     ; 2142 {
7393                     	switch	.text
7394  0ccd               _TIM1_GetCapture4:
7396  0ccd 5204          	subw	sp,#4
7397       00000004      OFST:	set	4
7400                     ; 2144     u16 tmpccr4 = 0;
7402                     ; 2145   u8 tmpccr4l=0, tmpccr4h=0;
7406                     ; 2147     tmpccr4h = TIM1->CCR4H;
7408  0ccf c6526b        	ld	a,21099
7409  0cd2 6b02          	ld	(OFST-2,sp),a
7410                     ; 2148 	tmpccr4l = TIM1->CCR4L;
7412  0cd4 c6526c        	ld	a,21100
7413  0cd7 6b01          	ld	(OFST-3,sp),a
7414                     ; 2150     tmpccr4 = (u16)(tmpccr4l);
7416  0cd9 5f            	clrw	x
7417  0cda 97            	ld	xl,a
7418  0cdb 1f03          	ldw	(OFST-1,sp),x
7419                     ; 2151     tmpccr4 |= (u16)((u16)tmpccr4h << 8);
7421  0cdd 7b02          	ld	a,(OFST-2,sp)
7422  0cdf 97            	ld	xl,a
7423  0ce0 7b04          	ld	a,(OFST+0,sp)
7424  0ce2 01            	rrwa	x,a
7425  0ce3 1a03          	or	a,(OFST-1,sp)
7426  0ce5 01            	rrwa	x,a
7427                     ; 2153     return (u16)tmpccr4;
7431  0ce6 5b04          	addw	sp,#4
7432  0ce8 81            	ret	
7455                     ; 2165 u16 TIM1_GetCounter(void)
7455                     ; 2166 {
7456                     	switch	.text
7457  0ce9               _TIM1_GetCounter:
7459  0ce9 89            	pushw	x
7460       00000002      OFST:	set	2
7463                     ; 2168   return (u16)(((u16)TIM1->CNTRH << 8) | (u16)(TIM1->CNTRL));
7465  0cea c6525f        	ld	a,21087
7466  0ced 5f            	clrw	x
7467  0cee 97            	ld	xl,a
7468  0cef 1f01          	ldw	(OFST-1,sp),x
7469  0cf1 c6525e        	ld	a,21086
7470  0cf4 97            	ld	xl,a
7471  0cf5 7b02          	ld	a,(OFST+0,sp)
7472  0cf7 01            	rrwa	x,a
7473  0cf8 1a01          	or	a,(OFST-1,sp)
7474  0cfa 01            	rrwa	x,a
7477  0cfb 5b02          	addw	sp,#2
7478  0cfd 81            	ret	
7501                     ; 2180 u16 TIM1_GetPrescaler(void)
7501                     ; 2181 {
7502                     	switch	.text
7503  0cfe               _TIM1_GetPrescaler:
7505  0cfe 89            	pushw	x
7506       00000002      OFST:	set	2
7509                     ; 2183   return (u16)(((u16)TIM1->PSCRH << 8) | (u16)(TIM1->PSCRL));
7511  0cff c65261        	ld	a,21089
7512  0d02 5f            	clrw	x
7513  0d03 97            	ld	xl,a
7514  0d04 1f01          	ldw	(OFST-1,sp),x
7515  0d06 c65260        	ld	a,21088
7516  0d09 97            	ld	xl,a
7517  0d0a 7b02          	ld	a,(OFST+0,sp)
7518  0d0c 01            	rrwa	x,a
7519  0d0d 1a01          	or	a,(OFST-1,sp)
7520  0d0f 01            	rrwa	x,a
7523  0d10 5b02          	addw	sp,#2
7524  0d12 81            	ret	
7699                     ; 2207 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
7699                     ; 2208 {
7700                     	switch	.text
7701  0d13               _TIM1_GetFlagStatus:
7703  0d13 89            	pushw	x
7704  0d14 5203          	subw	sp,#3
7705       00000003      OFST:	set	3
7708                     ; 2209   FlagStatus bitstatus = RESET;
7710                     ; 2213   assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
7712  0d16 1e04          	ldw	x,(OFST+1,sp)
7713  0d18 a30001        	cpw	x,#1
7714  0d1b 273a          	jreq	L6071
7715  0d1d a30002        	cpw	x,#2
7716  0d20 2735          	jreq	L6071
7717  0d22 a30004        	cpw	x,#4
7718  0d25 2730          	jreq	L6071
7719  0d27 a30008        	cpw	x,#8
7720  0d2a 272b          	jreq	L6071
7721  0d2c a30010        	cpw	x,#16
7722  0d2f 2726          	jreq	L6071
7723  0d31 a30020        	cpw	x,#32
7724  0d34 2721          	jreq	L6071
7725  0d36 a30040        	cpw	x,#64
7726  0d39 271c          	jreq	L6071
7727  0d3b a30080        	cpw	x,#128
7728  0d3e 2717          	jreq	L6071
7729  0d40 a30200        	cpw	x,#512
7730  0d43 2712          	jreq	L6071
7731  0d45 a30400        	cpw	x,#1024
7732  0d48 270d          	jreq	L6071
7733  0d4a a30800        	cpw	x,#2048
7734  0d4d 2708          	jreq	L6071
7735  0d4f a31000        	cpw	x,#4096
7736  0d52 2703          	jreq	L6071
7737  0d54 cd0000        	call	_assert_failed
7739  0d57               L6071:
7740                     ; 2215   tim1_flag_l = (u8)(TIM1_FLAG);
7742  0d57 7b05          	ld	a,(OFST+2,sp)
7743  0d59 6b02          	ld	(OFST-1,sp),a
7744                     ; 2216   tim1_flag_h = (u8)((u16)TIM1_FLAG >> 8);
7746  0d5b 7b04          	ld	a,(OFST+1,sp)
7747  0d5d 6b03          	ld	(OFST+0,sp),a
7748                     ; 2218   if (((TIM1->SR1 & tim1_flag_l) | (TIM1->SR2 & tim1_flag_h)) != 0)
7750  0d5f c45256        	and	a,21078
7751  0d62 6b01          	ld	(OFST-2,sp),a
7752  0d64 c65255        	ld	a,21077
7753  0d67 1402          	and	a,(OFST-1,sp)
7754  0d69 1a01          	or	a,(OFST-2,sp)
7755  0d6b 2702          	jreq	L1543
7756                     ; 2220     bitstatus = SET;
7758  0d6d a601          	ld	a,#1
7760  0d6f               L1543:
7761                     ; 2224     bitstatus = RESET;
7763                     ; 2226   return (FlagStatus)(bitstatus);
7767  0d6f 5b05          	addw	sp,#5
7768  0d71 81            	ret	
7804                     ; 2250 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
7804                     ; 2251 {
7805                     	switch	.text
7806  0d72               _TIM1_ClearFlag:
7808  0d72 89            	pushw	x
7809       00000000      OFST:	set	0
7812                     ; 2253   assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
7814  0d73 01            	rrwa	x,a
7815  0d74 9f            	ld	a,xl
7816  0d75 a4e1          	and	a,#225
7817  0d77 97            	ld	xl,a
7818  0d78 4f            	clr	a
7819  0d79 02            	rlwa	x,a
7820  0d7a 5d            	tnzw	x
7821  0d7b 2604          	jrne	L4171
7822  0d7d 1e01          	ldw	x,(OFST+1,sp)
7823  0d7f 2603          	jrne	L6171
7824  0d81               L4171:
7825  0d81 cd0000        	call	_assert_failed
7827  0d84               L6171:
7828                     ; 2256   TIM1->SR1 = (u8)(~(u8)(TIM1_FLAG));
7830  0d84 7b02          	ld	a,(OFST+2,sp)
7831  0d86 43            	cpl	a
7832  0d87 c75255        	ld	21077,a
7833                     ; 2257   TIM1->SR2 = (u8)((u8)(~((u8)((u16)TIM1_FLAG >> 8))) & (u8)0x1E);
7835  0d8a 7b01          	ld	a,(OFST+1,sp)
7836  0d8c 43            	cpl	a
7837  0d8d a41e          	and	a,#30
7838  0d8f c75256        	ld	21078,a
7839                     ; 2258 }
7842  0d92 85            	popw	x
7843  0d93 81            	ret	
7908                     ; 2278 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
7908                     ; 2279 {
7909                     	switch	.text
7910  0d94               _TIM1_GetITStatus:
7912  0d94 88            	push	a
7913  0d95 89            	pushw	x
7914       00000002      OFST:	set	2
7917                     ; 2280   ITStatus bitstatus = RESET;
7919                     ; 2282   u8 TIM1_itStatus = 0x0, TIM1_itEnable = 0x0;
7923  0d96 7b02          	ld	a,(OFST+0,sp)
7924  0d98 97            	ld	xl,a
7925                     ; 2285   assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
7927  0d99 7b03          	ld	a,(OFST+1,sp)
7928  0d9b a101          	cp	a,#1
7929  0d9d 271f          	jreq	L0371
7930  0d9f a102          	cp	a,#2
7931  0da1 271b          	jreq	L0371
7932  0da3 a104          	cp	a,#4
7933  0da5 2717          	jreq	L0371
7934  0da7 a108          	cp	a,#8
7935  0da9 2713          	jreq	L0371
7936  0dab a110          	cp	a,#16
7937  0dad 270f          	jreq	L0371
7938  0daf a120          	cp	a,#32
7939  0db1 270b          	jreq	L0371
7940  0db3 a140          	cp	a,#64
7941  0db5 2707          	jreq	L0371
7942  0db7 a180          	cp	a,#128
7943  0db9 2703          	jreq	L0371
7944  0dbb cd0000        	call	_assert_failed
7946  0dbe               L0371:
7947                     ; 2287   TIM1_itStatus = (u8)(TIM1->SR1 & (u8)TIM1_IT);
7949  0dbe c65255        	ld	a,21077
7950  0dc1 1403          	and	a,(OFST+1,sp)
7951  0dc3 6b01          	ld	(OFST-1,sp),a
7952                     ; 2289   TIM1_itEnable = (u8)(TIM1->IER & (u8)TIM1_IT);
7954  0dc5 c65254        	ld	a,21076
7955  0dc8 1403          	and	a,(OFST+1,sp)
7956  0dca 6b02          	ld	(OFST+0,sp),a
7957                     ; 2291   if ((TIM1_itStatus != (u8)RESET ) && (TIM1_itEnable != (u8)RESET ))
7959  0dcc 7b01          	ld	a,(OFST-1,sp)
7960  0dce 2708          	jreq	L5253
7962  0dd0 7b02          	ld	a,(OFST+0,sp)
7963  0dd2 2704          	jreq	L5253
7964                     ; 2293     bitstatus = SET;
7966  0dd4 a601          	ld	a,#1
7968  0dd6 2001          	jra	L7253
7969  0dd8               L5253:
7970                     ; 2297     bitstatus = RESET;
7972  0dd8 4f            	clr	a
7973  0dd9               L7253:
7974                     ; 2299   return (ITStatus)(bitstatus);
7978  0dd9 5b03          	addw	sp,#3
7979  0ddb 81            	ret	
8016                     ; 2319 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
8016                     ; 2320 {
8017                     	switch	.text
8018  0ddc               _TIM1_ClearITPendingBit:
8020  0ddc 88            	push	a
8021       00000000      OFST:	set	0
8024                     ; 2322   assert_param(IS_TIM1_IT_OK(TIM1_IT));
8026  0ddd 4d            	tnz	a
8027  0dde 2603          	jrne	L0471
8028  0de0 cd0000        	call	_assert_failed
8030  0de3               L0471:
8031                     ; 2325   TIM1->SR1 = (u8)(~(u8)TIM1_IT);
8033  0de3 7b01          	ld	a,(OFST+1,sp)
8034  0de5 43            	cpl	a
8035  0de6 c75255        	ld	21077,a
8036                     ; 2326 }
8039  0de9 84            	pop	a
8040  0dea 81            	ret	
8092                     ; 2347 static void TI1_Config(u8 TIM1_ICPolarity,
8092                     ; 2348                        u8 TIM1_ICSelection,
8092                     ; 2349                        u8 TIM1_ICFilter)
8092                     ; 2350 {
8093                     	switch	.text
8094  0deb               L3_TI1_Config:
8096  0deb 89            	pushw	x
8097       00000001      OFST:	set	1
8100                     ; 2353   TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC1E);
8102  0dec 7211525c      	bres	21084,#0
8103  0df0 88            	push	a
8104                     ; 2356   TIM1->CCMR1 = (u8)((TIM1->CCMR1 & (u8)(~( TIM1_CCMR_CCxS     |        TIM1_CCMR_ICxF    ))) | (u8)(( (TIM1_ICSelection)) | ((u8)( TIM1_ICFilter << 4))));
8106  0df1 7b06          	ld	a,(OFST+5,sp)
8107  0df3 97            	ld	xl,a
8108  0df4 a610          	ld	a,#16
8109  0df6 42            	mul	x,a
8110  0df7 9f            	ld	a,xl
8111  0df8 1a03          	or	a,(OFST+2,sp)
8112  0dfa 6b01          	ld	(OFST+0,sp),a
8113  0dfc c65258        	ld	a,21080
8114  0dff a40c          	and	a,#12
8115  0e01 1a01          	or	a,(OFST+0,sp)
8116  0e03 c75258        	ld	21080,a
8117                     ; 2361   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8119  0e06 7b02          	ld	a,(OFST+1,sp)
8120  0e08 2706          	jreq	L5753
8121                     ; 2363     TIM1->CCER1 |= TIM1_CCER1_CC1P;
8123  0e0a 7212525c      	bset	21084,#1
8125  0e0e 2004          	jra	L7753
8126  0e10               L5753:
8127                     ; 2367     TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC1P);
8129  0e10 7213525c      	bres	21084,#1
8130  0e14               L7753:
8131                     ; 2371   TIM1->CCER1 |=  TIM1_CCER1_CC1E;
8133  0e14 7210525c      	bset	21084,#0
8134                     ; 2372 }
8137  0e18 5b03          	addw	sp,#3
8138  0e1a 81            	ret	
8190                     ; 2393 static void TI2_Config(u8 TIM1_ICPolarity,
8190                     ; 2394                        u8 TIM1_ICSelection,
8190                     ; 2395                        u8 TIM1_ICFilter)
8190                     ; 2396 {
8191                     	switch	.text
8192  0e1b               L5_TI2_Config:
8194  0e1b 89            	pushw	x
8195       00000001      OFST:	set	1
8198                     ; 2398   TIM1->CCER1 &=  (u8)(~TIM1_CCER1_CC2E);
8200  0e1c 7219525c      	bres	21084,#4
8201  0e20 88            	push	a
8202                     ; 2401   TIM1->CCMR2  = (u8)((TIM1->CCMR2 & (u8)(~( TIM1_CCMR_CCxS     |        TIM1_CCMR_ICxF    ))) | (u8)(( (TIM1_ICSelection)) | ((u8)( TIM1_ICFilter << 4))));
8204  0e21 7b06          	ld	a,(OFST+5,sp)
8205  0e23 97            	ld	xl,a
8206  0e24 a610          	ld	a,#16
8207  0e26 42            	mul	x,a
8208  0e27 9f            	ld	a,xl
8209  0e28 1a03          	or	a,(OFST+2,sp)
8210  0e2a 6b01          	ld	(OFST+0,sp),a
8211  0e2c c65259        	ld	a,21081
8212  0e2f a40c          	and	a,#12
8213  0e31 1a01          	or	a,(OFST+0,sp)
8214  0e33 c75259        	ld	21081,a
8215                     ; 2403   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8217  0e36 7b02          	ld	a,(OFST+1,sp)
8218  0e38 2706          	jreq	L7263
8219                     ; 2405     TIM1->CCER1 |= TIM1_CCER1_CC2P;
8221  0e3a 721a525c      	bset	21084,#5
8223  0e3e 2004          	jra	L1363
8224  0e40               L7263:
8225                     ; 2409     TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC2P);
8227  0e40 721b525c      	bres	21084,#5
8228  0e44               L1363:
8229                     ; 2412   TIM1->CCER1 |=  TIM1_CCER1_CC2E;
8231  0e44 7218525c      	bset	21084,#4
8232                     ; 2413 }
8235  0e48 5b03          	addw	sp,#3
8236  0e4a 81            	ret	
8288                     ; 2433 static void TI3_Config(u8 TIM1_ICPolarity,
8288                     ; 2434                        u8 TIM1_ICSelection,
8288                     ; 2435                        u8 TIM1_ICFilter)
8288                     ; 2436 {
8289                     	switch	.text
8290  0e4b               L7_TI3_Config:
8292  0e4b 89            	pushw	x
8293       00000001      OFST:	set	1
8296                     ; 2438   TIM1->CCER2 &=  (u8)(~TIM1_CCER2_CC3E);
8298  0e4c 7211525d      	bres	21085,#0
8299  0e50 88            	push	a
8300                     ; 2441   TIM1->CCMR3 = (u8)((TIM1->CCMR3 & (u8)(~( TIM1_CCMR_CCxS     |        TIM1_CCMR_ICxF    ))) | (u8)(( (TIM1_ICSelection)) | ((u8)( TIM1_ICFilter << 4))));
8302  0e51 7b06          	ld	a,(OFST+5,sp)
8303  0e53 97            	ld	xl,a
8304  0e54 a610          	ld	a,#16
8305  0e56 42            	mul	x,a
8306  0e57 9f            	ld	a,xl
8307  0e58 1a03          	or	a,(OFST+2,sp)
8308  0e5a 6b01          	ld	(OFST+0,sp),a
8309  0e5c c6525a        	ld	a,21082
8310  0e5f a40c          	and	a,#12
8311  0e61 1a01          	or	a,(OFST+0,sp)
8312  0e63 c7525a        	ld	21082,a
8313                     ; 2444   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8315  0e66 7b02          	ld	a,(OFST+1,sp)
8316  0e68 2706          	jreq	L1663
8317                     ; 2446     TIM1->CCER2 |= TIM1_CCER2_CC3P;
8319  0e6a 7212525d      	bset	21085,#1
8321  0e6e 2004          	jra	L3663
8322  0e70               L1663:
8323                     ; 2450     TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC3P);
8325  0e70 7213525d      	bres	21085,#1
8326  0e74               L3663:
8327                     ; 2453   TIM1->CCER2 |=  TIM1_CCER2_CC3E;
8329  0e74 7210525d      	bset	21085,#0
8330                     ; 2454 }
8333  0e78 5b03          	addw	sp,#3
8334  0e7a 81            	ret	
8386                     ; 2475 static void TI4_Config(u8 TIM1_ICPolarity,
8386                     ; 2476                        u8 TIM1_ICSelection,
8386                     ; 2477                        u8 TIM1_ICFilter)
8386                     ; 2478 {
8387                     	switch	.text
8388  0e7b               L11_TI4_Config:
8390  0e7b 89            	pushw	x
8391       00000001      OFST:	set	1
8394                     ; 2481   TIM1->CCER2 &=  (u8)(~TIM1_CCER2_CC4E);
8396  0e7c 7219525d      	bres	21085,#4
8397  0e80 88            	push	a
8398                     ; 2484   TIM1->CCMR4 = (u8)((TIM1->CCMR4 & (u8)(~( TIM1_CCMR_CCxS     |        TIM1_CCMR_ICxF    )))  | (u8)(( (TIM1_ICSelection)) | ((u8)( TIM1_ICFilter << 4))));
8400  0e81 7b06          	ld	a,(OFST+5,sp)
8401  0e83 97            	ld	xl,a
8402  0e84 a610          	ld	a,#16
8403  0e86 42            	mul	x,a
8404  0e87 9f            	ld	a,xl
8405  0e88 1a03          	or	a,(OFST+2,sp)
8406  0e8a 6b01          	ld	(OFST+0,sp),a
8407  0e8c c6525b        	ld	a,21083
8408  0e8f a40c          	and	a,#12
8409  0e91 1a01          	or	a,(OFST+0,sp)
8410  0e93 c7525b        	ld	21083,a
8411                     ; 2489   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8413  0e96 7b02          	ld	a,(OFST+1,sp)
8414  0e98 2706          	jreq	L3173
8415                     ; 2491     TIM1->CCER2 |= TIM1_CCER2_CC4P;
8417  0e9a 721a525d      	bset	21085,#5
8419  0e9e 2004          	jra	L5173
8420  0ea0               L3173:
8421                     ; 2495     TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC4P);
8423  0ea0 721b525d      	bres	21085,#5
8424  0ea4               L5173:
8425                     ; 2499   TIM1->CCER2 |=  TIM1_CCER2_CC4E;
8427  0ea4 7218525d      	bset	21085,#4
8428                     ; 2500 }
8431  0ea8 5b03          	addw	sp,#3
8432  0eaa 81            	ret	
8445                     	xdef	_TIM1_ClearITPendingBit
8446                     	xdef	_TIM1_GetITStatus
8447                     	xdef	_TIM1_ClearFlag
8448                     	xdef	_TIM1_GetFlagStatus
8449                     	xdef	_TIM1_GetPrescaler
8450                     	xdef	_TIM1_GetCounter
8451                     	xdef	_TIM1_GetCapture4
8452                     	xdef	_TIM1_GetCapture3
8453                     	xdef	_TIM1_GetCapture2
8454                     	xdef	_TIM1_GetCapture1
8455                     	xdef	_TIM1_SetIC4Prescaler
8456                     	xdef	_TIM1_SetIC3Prescaler
8457                     	xdef	_TIM1_SetIC2Prescaler
8458                     	xdef	_TIM1_SetIC1Prescaler
8459                     	xdef	_TIM1_SetCompare4
8460                     	xdef	_TIM1_SetCompare3
8461                     	xdef	_TIM1_SetCompare2
8462                     	xdef	_TIM1_SetCompare1
8463                     	xdef	_TIM1_SetAutoreload
8464                     	xdef	_TIM1_SetCounter
8465                     	xdef	_TIM1_SelectOCxM
8466                     	xdef	_TIM1_CCxNCmd
8467                     	xdef	_TIM1_CCxCmd
8468                     	xdef	_TIM1_OC4PolarityConfig
8469                     	xdef	_TIM1_OC3NPolarityConfig
8470                     	xdef	_TIM1_OC3PolarityConfig
8471                     	xdef	_TIM1_OC2NPolarityConfig
8472                     	xdef	_TIM1_OC2PolarityConfig
8473                     	xdef	_TIM1_OC1NPolarityConfig
8474                     	xdef	_TIM1_OC1PolarityConfig
8475                     	xdef	_TIM1_GenerateEvent
8476                     	xdef	_TIM1_OC4FastConfig
8477                     	xdef	_TIM1_OC3FastConfig
8478                     	xdef	_TIM1_OC2FastConfig
8479                     	xdef	_TIM1_OC1FastConfig
8480                     	xdef	_TIM1_OC4PreloadConfig
8481                     	xdef	_TIM1_OC3PreloadConfig
8482                     	xdef	_TIM1_OC2PreloadConfig
8483                     	xdef	_TIM1_OC1PreloadConfig
8484                     	xdef	_TIM1_CCPreloadControl
8485                     	xdef	_TIM1_SelectCOM
8486                     	xdef	_TIM1_ARRPreloadConfig
8487                     	xdef	_TIM1_ForcedOC4Config
8488                     	xdef	_TIM1_ForcedOC3Config
8489                     	xdef	_TIM1_ForcedOC2Config
8490                     	xdef	_TIM1_ForcedOC1Config
8491                     	xdef	_TIM1_CounterModeConfig
8492                     	xdef	_TIM1_PrescalerConfig
8493                     	xdef	_TIM1_EncoderInterfaceConfig
8494                     	xdef	_TIM1_SelectMasterSlaveMode
8495                     	xdef	_TIM1_SelectSlaveMode
8496                     	xdef	_TIM1_SelectOutputTrigger
8497                     	xdef	_TIM1_SelectOnePulseMode
8498                     	xdef	_TIM1_SelectHallSensor
8499                     	xdef	_TIM1_UpdateRequestConfig
8500                     	xdef	_TIM1_UpdateDisableConfig
8501                     	xdef	_TIM1_SelectInputTrigger
8502                     	xdef	_TIM1_TIxExternalClockConfig
8503                     	xdef	_TIM1_ETRConfig
8504                     	xdef	_TIM1_ETRClockMode2Config
8505                     	xdef	_TIM1_ETRClockMode1Config
8506                     	xdef	_TIM1_InternalClockConfig
8507                     	xdef	_TIM1_ITConfig
8508                     	xdef	_TIM1_CtrlPWMOutputs
8509                     	xdef	_TIM1_Cmd
8510                     	xdef	_TIM1_PWMIConfig
8511                     	xdef	_TIM1_ICInit
8512                     	xdef	_TIM1_BDTRConfig
8513                     	xdef	_TIM1_OC4Init
8514                     	xdef	_TIM1_OC3Init
8515                     	xdef	_TIM1_OC2Init
8516                     	xdef	_TIM1_OC1Init
8517                     	xdef	_TIM1_TimeBaseInit
8518                     	xdef	_TIM1_DeInit
8519                     	xref	_assert_failed
8538                     	end
