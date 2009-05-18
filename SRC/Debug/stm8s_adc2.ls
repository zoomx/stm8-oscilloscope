   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.8 - 03 Dec 2008
   3                     ; Optimizer V4.2.8 - 03 Dec 2008
  33                     ; 48 void ADC2_DeInit(void)
  33                     ; 49 {
  35                     	switch	.text
  36  0000               _ADC2_DeInit:
  40                     ; 50   ADC2->CSR  = ADC2_CSR_RESET_VALUE;
  42  0000 725f5400      	clr	21504
  43                     ; 51   ADC2->CR1  = ADC2_CR1_RESET_VALUE;
  45  0004 725f5401      	clr	21505
  46                     ; 52   ADC2->CR2  = ADC2_CR2_RESET_VALUE;
  48  0008 725f5402      	clr	21506
  49                     ; 53   ADC2->TDRH = ADC2_TDRH_RESET_VALUE;
  51  000c 725f5406      	clr	21510
  52                     ; 54   ADC2->TDRL = ADC2_TDRL_RESET_VALUE;
  54  0010 725f5407      	clr	21511
  55                     ; 55 }
  58  0014 81            	ret	
 585                     ; 79 void ADC2_Init(ADC2_ConvMode_TypeDef ADC2_ConversionMode, ADC2_Channel_TypeDef ADC2_Channel, ADC2_PresSel_TypeDef ADC2_PrescalerSelection, ADC2_ExtTrig_TypeDef ADC2_ExtTrigger, FunctionalState ADC2_ExtTriggerState, ADC2_Align_TypeDef ADC2_Align, ADC2_SchmittTrigg_TypeDef ADC2_SchmittTriggerChannel, FunctionalState ADC2_SchmittTriggerState)
 585                     ; 80 {
 586                     	switch	.text
 587  0015               _ADC2_Init:
 589  0015 89            	pushw	x
 590       00000000      OFST:	set	0
 593                     ; 83   assert_param(IS_ADC2_CONVERSIONMODE_OK(ADC2_ConversionMode));
 595  0016 9e            	ld	a,xh
 596  0017 4d            	tnz	a
 597  0018 2707          	jreq	L41
 598  001a 9e            	ld	a,xh
 599  001b 4a            	dec	a
 600  001c 2703          	jreq	L41
 601  001e cd0000        	call	_assert_failed
 603  0021               L41:
 604                     ; 84   assert_param(IS_ADC2_CHANNEL_OK(ADC2_Channel));
 606  0021 7b02          	ld	a,(OFST+2,sp)
 607  0023 273f          	jreq	L42
 608  0025 a101          	cp	a,#1
 609  0027 273b          	jreq	L42
 610  0029 a102          	cp	a,#2
 611  002b 2737          	jreq	L42
 612  002d a103          	cp	a,#3
 613  002f 2733          	jreq	L42
 614  0031 a104          	cp	a,#4
 615  0033 272f          	jreq	L42
 616  0035 a105          	cp	a,#5
 617  0037 272b          	jreq	L42
 618  0039 a106          	cp	a,#6
 619  003b 2727          	jreq	L42
 620  003d a107          	cp	a,#7
 621  003f 2723          	jreq	L42
 622  0041 a108          	cp	a,#8
 623  0043 271f          	jreq	L42
 624  0045 a109          	cp	a,#9
 625  0047 271b          	jreq	L42
 626  0049 a10a          	cp	a,#10
 627  004b 2717          	jreq	L42
 628  004d a10b          	cp	a,#11
 629  004f 2713          	jreq	L42
 630  0051 a10c          	cp	a,#12
 631  0053 270f          	jreq	L42
 632  0055 a10d          	cp	a,#13
 633  0057 270b          	jreq	L42
 634  0059 a10e          	cp	a,#14
 635  005b 2707          	jreq	L42
 636  005d a10f          	cp	a,#15
 637  005f 2703          	jreq	L42
 638  0061 cd0000        	call	_assert_failed
 640  0064               L42:
 641                     ; 85   assert_param(IS_ADC2_PRESSEL_OK(ADC2_PrescalerSelection));
 643  0064 7b05          	ld	a,(OFST+5,sp)
 644  0066 271f          	jreq	L43
 645  0068 a110          	cp	a,#16
 646  006a 271b          	jreq	L43
 647  006c a120          	cp	a,#32
 648  006e 2717          	jreq	L43
 649  0070 a130          	cp	a,#48
 650  0072 2713          	jreq	L43
 651  0074 a140          	cp	a,#64
 652  0076 270f          	jreq	L43
 653  0078 a150          	cp	a,#80
 654  007a 270b          	jreq	L43
 655  007c a160          	cp	a,#96
 656  007e 2707          	jreq	L43
 657  0080 a170          	cp	a,#112
 658  0082 2703          	jreq	L43
 659  0084 cd0000        	call	_assert_failed
 661  0087               L43:
 662                     ; 86   assert_param(IS_ADC2_EXTTRIG_OK(ADC2_ExtTrigger));
 664  0087 7b06          	ld	a,(OFST+6,sp)
 665  0089 2706          	jreq	L44
 666  008b 4a            	dec	a
 667  008c 2703          	jreq	L44
 668  008e cd0000        	call	_assert_failed
 670  0091               L44:
 671                     ; 87   assert_param(IS_FUNCTIONALSTATE_OK(((ADC2_ExtTriggerState))));
 673  0091 7b07          	ld	a,(OFST+7,sp)
 674  0093 4a            	dec	a
 675  0094 2707          	jreq	L45
 676  0096 7b07          	ld	a,(OFST+7,sp)
 677  0098 2703          	jreq	L45
 678  009a cd0000        	call	_assert_failed
 680  009d               L45:
 681                     ; 88   assert_param(IS_ADC2_ALIGN_OK(ADC2_Align));
 683  009d 7b08          	ld	a,(OFST+8,sp)
 684  009f 2707          	jreq	L46
 685  00a1 a108          	cp	a,#8
 686  00a3 2703          	jreq	L46
 687  00a5 cd0000        	call	_assert_failed
 689  00a8               L46:
 690                     ; 89   assert_param(IS_ADC2_SCHMITTTRIG_OK(ADC2_SchmittTriggerChannel));
 692  00a8 7b09          	ld	a,(OFST+9,sp)
 693  00aa 2743          	jreq	L47
 694  00ac a101          	cp	a,#1
 695  00ae 273f          	jreq	L47
 696  00b0 a102          	cp	a,#2
 697  00b2 273b          	jreq	L47
 698  00b4 a103          	cp	a,#3
 699  00b6 2737          	jreq	L47
 700  00b8 a104          	cp	a,#4
 701  00ba 2733          	jreq	L47
 702  00bc a105          	cp	a,#5
 703  00be 272f          	jreq	L47
 704  00c0 a106          	cp	a,#6
 705  00c2 272b          	jreq	L47
 706  00c4 a107          	cp	a,#7
 707  00c6 2727          	jreq	L47
 708  00c8 a108          	cp	a,#8
 709  00ca 2723          	jreq	L47
 710  00cc a109          	cp	a,#9
 711  00ce 271f          	jreq	L47
 712  00d0 a10a          	cp	a,#10
 713  00d2 271b          	jreq	L47
 714  00d4 a10b          	cp	a,#11
 715  00d6 2717          	jreq	L47
 716  00d8 a10c          	cp	a,#12
 717  00da 2713          	jreq	L47
 718  00dc a10d          	cp	a,#13
 719  00de 270f          	jreq	L47
 720  00e0 a10e          	cp	a,#14
 721  00e2 270b          	jreq	L47
 722  00e4 a10f          	cp	a,#15
 723  00e6 2707          	jreq	L47
 724  00e8 a11f          	cp	a,#31
 725  00ea 2703          	jreq	L47
 726  00ec cd0000        	call	_assert_failed
 728  00ef               L47:
 729                     ; 90   assert_param(IS_FUNCTIONALSTATE_OK(ADC2_SchmittTriggerState));
 731  00ef 7b0a          	ld	a,(OFST+10,sp)
 732  00f1 4a            	dec	a
 733  00f2 2707          	jreq	L401
 734  00f4 7b0a          	ld	a,(OFST+10,sp)
 735  00f6 2703          	jreq	L401
 736  00f8 cd0000        	call	_assert_failed
 738  00fb               L401:
 739                     ; 95   ADC2_ConversionConfig(ADC2_ConversionMode, ADC2_Channel, ADC2_Align);
 741  00fb 7b08          	ld	a,(OFST+8,sp)
 742  00fd 88            	push	a
 743  00fe 7b03          	ld	a,(OFST+3,sp)
 744  0100 97            	ld	xl,a
 745  0101 7b02          	ld	a,(OFST+2,sp)
 746  0103 95            	ld	xh,a
 747  0104 cd026a        	call	_ADC2_ConversionConfig
 749  0107 84            	pop	a
 750                     ; 97   ADC2_PrescalerConfig(ADC2_PrescalerSelection);
 752  0108 7b05          	ld	a,(OFST+5,sp)
 753  010a ad4d          	call	_ADC2_PrescalerConfig
 755                     ; 102   ADC2_ExternalTriggerConfig(ADC2_ExtTrigger, ADC2_ExtTriggerState);
 757  010c 7b07          	ld	a,(OFST+7,sp)
 758  010e 97            	ld	xl,a
 759  010f 7b06          	ld	a,(OFST+6,sp)
 760  0111 95            	ld	xh,a
 761  0112 cd02f1        	call	_ADC2_ExternalTriggerConfig
 763                     ; 107   ADC2_SchmittTriggerConfig(ADC2_SchmittTriggerChannel, ADC2_SchmittTriggerState);
 765  0115 7b0a          	ld	a,(OFST+10,sp)
 766  0117 97            	ld	xl,a
 767  0118 7b09          	ld	a,(OFST+9,sp)
 768  011a 95            	ld	xh,a
 769  011b ad71          	call	_ADC2_SchmittTriggerConfig
 771                     ; 110   ADC2->CR1 |= ADC2_CR1_ADON;
 773  011d 72105401      	bset	21505,#0
 774                     ; 112 }
 777  0121 85            	popw	x
 778  0122 81            	ret	
 814                     ; 122 void ADC2_Cmd(FunctionalState NewState)
 814                     ; 123 {
 815                     	switch	.text
 816  0123               _ADC2_Cmd:
 818  0123 88            	push	a
 819       00000000      OFST:	set	0
 822                     ; 126   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 824  0124 a101          	cp	a,#1
 825  0126 2706          	jreq	L621
 826  0128 4d            	tnz	a
 827  0129 2703          	jreq	L621
 828  012b cd0000        	call	_assert_failed
 830  012e               L621:
 831                     ; 128   if (NewState != DISABLE)
 833  012e 7b01          	ld	a,(OFST+1,sp)
 834  0130 2706          	jreq	L703
 835                     ; 130     ADC2->CR1 |= ADC2_CR1_ADON;
 837  0132 72105401      	bset	21505,#0
 839  0136 2004          	jra	L113
 840  0138               L703:
 841                     ; 134     ADC2->CR1 &= (u8)(~ADC2_CR1_ADON);
 843  0138 72115401      	bres	21505,#0
 844  013c               L113:
 845                     ; 137 }
 848  013c 84            	pop	a
 849  013d 81            	ret	
 885                     ; 146 void ADC2_ITConfig(FunctionalState NewState)
 885                     ; 147 {
 886                     	switch	.text
 887  013e               _ADC2_ITConfig:
 889  013e 88            	push	a
 890       00000000      OFST:	set	0
 893                     ; 150   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 895  013f a101          	cp	a,#1
 896  0141 2706          	jreq	L041
 897  0143 4d            	tnz	a
 898  0144 2703          	jreq	L041
 899  0146 cd0000        	call	_assert_failed
 901  0149               L041:
 902                     ; 152   if (NewState != DISABLE)
 904  0149 7b01          	ld	a,(OFST+1,sp)
 905  014b 2706          	jreq	L133
 906                     ; 155     ADC2->CSR |= (u8)ADC2_CSR_EOCIE;
 908  014d 721a5400      	bset	21504,#5
 910  0151 2004          	jra	L333
 911  0153               L133:
 912                     ; 160     ADC2->CSR &= (u8)(~ADC2_CSR_EOCIE);
 914  0153 721b5400      	bres	21504,#5
 915  0157               L333:
 916                     ; 163 }
 919  0157 84            	pop	a
 920  0158 81            	ret	
 957                     ; 173 void ADC2_PrescalerConfig(ADC2_PresSel_TypeDef ADC2_Prescaler)
 957                     ; 174 {
 958                     	switch	.text
 959  0159               _ADC2_PrescalerConfig:
 961  0159 88            	push	a
 962       00000000      OFST:	set	0
 965                     ; 177   assert_param(IS_ADC2_PRESSEL_OK(ADC2_Prescaler));
 967  015a 4d            	tnz	a
 968  015b 271f          	jreq	L251
 969  015d a110          	cp	a,#16
 970  015f 271b          	jreq	L251
 971  0161 a120          	cp	a,#32
 972  0163 2717          	jreq	L251
 973  0165 a130          	cp	a,#48
 974  0167 2713          	jreq	L251
 975  0169 a140          	cp	a,#64
 976  016b 270f          	jreq	L251
 977  016d a150          	cp	a,#80
 978  016f 270b          	jreq	L251
 979  0171 a160          	cp	a,#96
 980  0173 2707          	jreq	L251
 981  0175 a170          	cp	a,#112
 982  0177 2703          	jreq	L251
 983  0179 cd0000        	call	_assert_failed
 985  017c               L251:
 986                     ; 180   ADC2->CR1 &= (u8)(~ADC2_CR1_SPSEL);
 988  017c c65401        	ld	a,21505
 989  017f a48f          	and	a,#143
 990  0181 c75401        	ld	21505,a
 991                     ; 182   ADC2->CR1 |= (u8)(ADC2_Prescaler);
 993  0184 c65401        	ld	a,21505
 994  0187 1a01          	or	a,(OFST+1,sp)
 995  0189 c75401        	ld	21505,a
 996                     ; 184 }
 999  018c 84            	pop	a
1000  018d 81            	ret	
1048                     ; 197 void ADC2_SchmittTriggerConfig(ADC2_SchmittTrigg_TypeDef ADC2_SchmittTriggerChannel, FunctionalState NewState)
1048                     ; 198 {
1049                     	switch	.text
1050  018e               _ADC2_SchmittTriggerConfig:
1052  018e 89            	pushw	x
1053       00000000      OFST:	set	0
1056                     ; 201   assert_param(IS_ADC2_SCHMITTTRIG_OK(ADC2_SchmittTriggerChannel));
1058  018f 9e            	ld	a,xh
1059  0190 4d            	tnz	a
1060  0191 2752          	jreq	L461
1061  0193 9e            	ld	a,xh
1062  0194 4a            	dec	a
1063  0195 274e          	jreq	L461
1064  0197 9e            	ld	a,xh
1065  0198 a102          	cp	a,#2
1066  019a 2749          	jreq	L461
1067  019c 9e            	ld	a,xh
1068  019d a103          	cp	a,#3
1069  019f 2744          	jreq	L461
1070  01a1 9e            	ld	a,xh
1071  01a2 a104          	cp	a,#4
1072  01a4 273f          	jreq	L461
1073  01a6 9e            	ld	a,xh
1074  01a7 a105          	cp	a,#5
1075  01a9 273a          	jreq	L461
1076  01ab 9e            	ld	a,xh
1077  01ac a106          	cp	a,#6
1078  01ae 2735          	jreq	L461
1079  01b0 9e            	ld	a,xh
1080  01b1 a107          	cp	a,#7
1081  01b3 2730          	jreq	L461
1082  01b5 9e            	ld	a,xh
1083  01b6 a108          	cp	a,#8
1084  01b8 272b          	jreq	L461
1085  01ba 9e            	ld	a,xh
1086  01bb a109          	cp	a,#9
1087  01bd 2726          	jreq	L461
1088  01bf 9e            	ld	a,xh
1089  01c0 a10a          	cp	a,#10
1090  01c2 2721          	jreq	L461
1091  01c4 9e            	ld	a,xh
1092  01c5 a10b          	cp	a,#11
1093  01c7 271c          	jreq	L461
1094  01c9 9e            	ld	a,xh
1095  01ca a10c          	cp	a,#12
1096  01cc 2717          	jreq	L461
1097  01ce 9e            	ld	a,xh
1098  01cf a10d          	cp	a,#13
1099  01d1 2712          	jreq	L461
1100  01d3 9e            	ld	a,xh
1101  01d4 a10e          	cp	a,#14
1102  01d6 270d          	jreq	L461
1103  01d8 9e            	ld	a,xh
1104  01d9 a10f          	cp	a,#15
1105  01db 2708          	jreq	L461
1106  01dd 9e            	ld	a,xh
1107  01de a11f          	cp	a,#31
1108  01e0 2703          	jreq	L461
1109  01e2 cd0000        	call	_assert_failed
1111  01e5               L461:
1112                     ; 202   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1114  01e5 7b02          	ld	a,(OFST+2,sp)
1115  01e7 4a            	dec	a
1116  01e8 2707          	jreq	L471
1117  01ea 7b02          	ld	a,(OFST+2,sp)
1118  01ec 2703          	jreq	L471
1119  01ee cd0000        	call	_assert_failed
1121  01f1               L471:
1122                     ; 204   if (ADC2_SchmittTriggerChannel == ADC2_SCHMITTTRIG_ALL)
1124  01f1 7b01          	ld	a,(OFST+1,sp)
1125  01f3 a11f          	cp	a,#31
1126  01f5 261d          	jrne	L573
1127                     ; 206     if (NewState != DISABLE)
1129  01f7 7b02          	ld	a,(OFST+2,sp)
1130  01f9 270a          	jreq	L773
1131                     ; 208       ADC2->TDRL &= (u8)0x0;
1133  01fb 725f5407      	clr	21511
1134                     ; 209       ADC2->TDRH &= (u8)0x0;
1136  01ff 725f5406      	clr	21510
1138  0203 2063          	jra	L304
1139  0205               L773:
1140                     ; 213       ADC2->TDRL |= (u8)0xFF;
1142  0205 c65407        	ld	a,21511
1143  0208 aaff          	or	a,#255
1144  020a c75407        	ld	21511,a
1145                     ; 214       ADC2->TDRH |= (u8)0xFF;
1147  020d c65406        	ld	a,21510
1148  0210 aaff          	or	a,#255
1149  0212 2051          	jp	LC001
1150  0214               L573:
1151                     ; 217   else if (ADC2_SchmittTriggerChannel < ADC2_SCHMITTTRIG_CHANNEL8)
1153  0214 a108          	cp	a,#8
1154  0216 0d02          	tnz	(OFST+2,sp)
1155  0218 2426          	jruge	L504
1156                     ; 219     if (NewState != DISABLE)
1158  021a 2714          	jreq	L704
1159                     ; 221       ADC2->TDRL &= (u8)(~(u8)((u8)0x01 << (u8)ADC2_SchmittTriggerChannel));
1161  021c 5f            	clrw	x
1162  021d 97            	ld	xl,a
1163  021e a601          	ld	a,#1
1164  0220 5d            	tnzw	x
1165  0221 2704          	jreq	L002
1166  0223               L202:
1167  0223 48            	sll	a
1168  0224 5a            	decw	x
1169  0225 26fc          	jrne	L202
1170  0227               L002:
1171  0227 43            	cpl	a
1172  0228 c45407        	and	a,21511
1173  022b               LC002:
1174  022b c75407        	ld	21511,a
1176  022e 2038          	jra	L304
1177  0230               L704:
1178                     ; 225       ADC2->TDRL |= (u8)((u8)0x01 << (u8)ADC2_SchmittTriggerChannel);
1180  0230 5f            	clrw	x
1181  0231 97            	ld	xl,a
1182  0232 a601          	ld	a,#1
1183  0234 5d            	tnzw	x
1184  0235 2704          	jreq	L402
1185  0237               L602:
1186  0237 48            	sll	a
1187  0238 5a            	decw	x
1188  0239 26fc          	jrne	L602
1189  023b               L402:
1190  023b ca5407        	or	a,21511
1191  023e 20eb          	jp	LC002
1192  0240               L504:
1193                     ; 230     if (NewState != DISABLE)
1195  0240 2713          	jreq	L514
1196                     ; 232       ADC2->TDRH &= (u8)(~(u8)((u8)0x01 << ((u8)ADC2_SchmittTriggerChannel - (u8)8)));
1198  0242 a008          	sub	a,#8
1199  0244 5f            	clrw	x
1200  0245 97            	ld	xl,a
1201  0246 a601          	ld	a,#1
1202  0248 5d            	tnzw	x
1203  0249 2704          	jreq	L012
1204  024b               L212:
1205  024b 48            	sll	a
1206  024c 5a            	decw	x
1207  024d 26fc          	jrne	L212
1208  024f               L012:
1209  024f 43            	cpl	a
1210  0250 c45406        	and	a,21510
1212  0253 2010          	jp	LC001
1213  0255               L514:
1214                     ; 236       ADC2->TDRH |= (u8)((u8)0x01 << ((u8)ADC2_SchmittTriggerChannel - (u8)8));
1216  0255 a008          	sub	a,#8
1217  0257 5f            	clrw	x
1218  0258 97            	ld	xl,a
1219  0259 a601          	ld	a,#1
1220  025b 5d            	tnzw	x
1221  025c 2704          	jreq	L412
1222  025e               L612:
1223  025e 48            	sll	a
1224  025f 5a            	decw	x
1225  0260 26fc          	jrne	L612
1226  0262               L412:
1227  0262 ca5406        	or	a,21510
1228  0265               LC001:
1229  0265 c75406        	ld	21510,a
1230  0268               L304:
1231                     ; 240 }
1234  0268 85            	popw	x
1235  0269 81            	ret	
1293                     ; 254 void ADC2_ConversionConfig(ADC2_ConvMode_TypeDef ADC2_ConversionMode, ADC2_Channel_TypeDef ADC2_Channel, ADC2_Align_TypeDef ADC2_Align)
1293                     ; 255 {
1294                     	switch	.text
1295  026a               _ADC2_ConversionConfig:
1297  026a 89            	pushw	x
1298       00000000      OFST:	set	0
1301                     ; 258   assert_param(IS_ADC2_CONVERSIONMODE_OK(ADC2_ConversionMode));
1303  026b 9e            	ld	a,xh
1304  026c 4d            	tnz	a
1305  026d 2707          	jreq	L622
1306  026f 9e            	ld	a,xh
1307  0270 4a            	dec	a
1308  0271 2703          	jreq	L622
1309  0273 cd0000        	call	_assert_failed
1311  0276               L622:
1312                     ; 259   assert_param(IS_ADC2_CHANNEL_OK(ADC2_Channel));
1314  0276 7b02          	ld	a,(OFST+2,sp)
1315  0278 273f          	jreq	L632
1316  027a a101          	cp	a,#1
1317  027c 273b          	jreq	L632
1318  027e a102          	cp	a,#2
1319  0280 2737          	jreq	L632
1320  0282 a103          	cp	a,#3
1321  0284 2733          	jreq	L632
1322  0286 a104          	cp	a,#4
1323  0288 272f          	jreq	L632
1324  028a a105          	cp	a,#5
1325  028c 272b          	jreq	L632
1326  028e a106          	cp	a,#6
1327  0290 2727          	jreq	L632
1328  0292 a107          	cp	a,#7
1329  0294 2723          	jreq	L632
1330  0296 a108          	cp	a,#8
1331  0298 271f          	jreq	L632
1332  029a a109          	cp	a,#9
1333  029c 271b          	jreq	L632
1334  029e a10a          	cp	a,#10
1335  02a0 2717          	jreq	L632
1336  02a2 a10b          	cp	a,#11
1337  02a4 2713          	jreq	L632
1338  02a6 a10c          	cp	a,#12
1339  02a8 270f          	jreq	L632
1340  02aa a10d          	cp	a,#13
1341  02ac 270b          	jreq	L632
1342  02ae a10e          	cp	a,#14
1343  02b0 2707          	jreq	L632
1344  02b2 a10f          	cp	a,#15
1345  02b4 2703          	jreq	L632
1346  02b6 cd0000        	call	_assert_failed
1348  02b9               L632:
1349                     ; 260   assert_param(IS_ADC2_ALIGN_OK(ADC2_Align));
1351  02b9 7b05          	ld	a,(OFST+5,sp)
1352  02bb 2707          	jreq	L642
1353  02bd a108          	cp	a,#8
1354  02bf 2703          	jreq	L642
1355  02c1 cd0000        	call	_assert_failed
1357  02c4               L642:
1358                     ; 263   ADC2->CR2 &= (u8)(~ADC2_CR2_ALIGN);
1360  02c4 72175402      	bres	21506,#3
1361                     ; 265   ADC2->CR2 |= (u8)(ADC2_Align);
1363  02c8 c65402        	ld	a,21506
1364  02cb 1a05          	or	a,(OFST+5,sp)
1365  02cd c75402        	ld	21506,a
1366                     ; 267   if (ADC2_ConversionMode == ADC2_CONVERSIONMODE_CONTINUOUS)
1368  02d0 7b01          	ld	a,(OFST+1,sp)
1369  02d2 4a            	dec	a
1370  02d3 2606          	jrne	L744
1371                     ; 270     ADC2->CR1 |= ADC2_CR1_CONT;
1373  02d5 72125401      	bset	21505,#1
1375  02d9 2004          	jra	L154
1376  02db               L744:
1377                     ; 275     ADC2->CR1 &= (u8)(~ADC2_CR1_CONT);
1379  02db 72135401      	bres	21505,#1
1380  02df               L154:
1381                     ; 279   ADC2->CSR &= (u8)(~ADC2_CSR_CH);
1383  02df c65400        	ld	a,21504
1384  02e2 a4f0          	and	a,#240
1385  02e4 c75400        	ld	21504,a
1386                     ; 281   ADC2->CSR |= (u8)(ADC2_Channel);
1388  02e7 c65400        	ld	a,21504
1389  02ea 1a02          	or	a,(OFST+2,sp)
1390  02ec c75400        	ld	21504,a
1391                     ; 283 }
1394  02ef 85            	popw	x
1395  02f0 81            	ret	
1442                     ; 298 void ADC2_ExternalTriggerConfig(ADC2_ExtTrig_TypeDef ADC2_ExtTrigger, FunctionalState NewState)
1442                     ; 299 {
1443                     	switch	.text
1444  02f1               _ADC2_ExternalTriggerConfig:
1446  02f1 89            	pushw	x
1447       00000000      OFST:	set	0
1450                     ; 302   assert_param(IS_ADC2_EXTTRIG_OK(ADC2_ExtTrigger));
1452  02f2 9e            	ld	a,xh
1453  02f3 4d            	tnz	a
1454  02f4 2707          	jreq	L062
1455  02f6 9e            	ld	a,xh
1456  02f7 4a            	dec	a
1457  02f8 2703          	jreq	L062
1458  02fa cd0000        	call	_assert_failed
1460  02fd               L062:
1461                     ; 303   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1463  02fd 7b02          	ld	a,(OFST+2,sp)
1464  02ff 4a            	dec	a
1465  0300 2707          	jreq	L072
1466  0302 7b02          	ld	a,(OFST+2,sp)
1467  0304 2703          	jreq	L072
1468  0306 cd0000        	call	_assert_failed
1470  0309               L072:
1471                     ; 306   ADC2->CR2 &= (u8)(~ADC2_CR2_EXTSEL);
1473  0309 c65402        	ld	a,21506
1474  030c a4cf          	and	a,#207
1475  030e c75402        	ld	21506,a
1476                     ; 308   if (NewState != DISABLE)
1478  0311 7b02          	ld	a,(OFST+2,sp)
1479  0313 2706          	jreq	L574
1480                     ; 311     ADC2->CR2 |= (u8)(ADC2_CR2_EXTTRIG);
1482  0315 721c5402      	bset	21506,#6
1484  0319 2004          	jra	L774
1485  031b               L574:
1486                     ; 316     ADC2->CR2 &= (u8)(~ADC2_CR2_EXTTRIG);
1488  031b 721d5402      	bres	21506,#6
1489  031f               L774:
1490                     ; 320   ADC2->CR2 |= (u8)(ADC2_ExtTrigger);
1492  031f c65402        	ld	a,21506
1493  0322 1a01          	or	a,(OFST+1,sp)
1494  0324 c75402        	ld	21506,a
1495                     ; 322 }
1498  0327 85            	popw	x
1499  0328 81            	ret	
1523                     ; 335 void ADC2_StartConversion(void)
1523                     ; 336 {
1524                     	switch	.text
1525  0329               _ADC2_StartConversion:
1529                     ; 337   ADC2->CR1 |= ADC2_CR1_ADON;
1531  0329 72105401      	bset	21505,#0
1532                     ; 338 }
1535  032d 81            	ret	
1579                     ; 348 u16 ADC2_GetConversionValue(void)
1579                     ; 349 {
1580                     	switch	.text
1581  032e               _ADC2_GetConversionValue:
1583  032e 5205          	subw	sp,#5
1584       00000005      OFST:	set	5
1587                     ; 351   u16 temph = 0;
1589                     ; 352   u8 templ = 0;
1591                     ; 354   if (ADC2->CR2 & ADC2_CR2_ALIGN) /* Right alignment */
1593  0330 720754020e    	btjf	21506,#3,L335
1594                     ; 357     templ = ADC2->DRL;
1596  0335 c65405        	ld	a,21509
1597  0338 6b03          	ld	(OFST-2,sp),a
1598                     ; 359     temph = ADC2->DRH;
1600  033a c65404        	ld	a,21508
1601  033d 97            	ld	xl,a
1602                     ; 361     temph = (u16)(templ | (u16)(temph << (u8)8));
1604  033e 7b03          	ld	a,(OFST-2,sp)
1605  0340 02            	rlwa	x,a
1607  0341 201a          	jra	L535
1608  0343               L335:
1609                     ; 366     temph = ADC2->DRH;
1611  0343 c65404        	ld	a,21508
1612  0346 97            	ld	xl,a
1613                     ; 368     templ = ADC2->DRL;
1615  0347 c65405        	ld	a,21509
1616  034a 6b03          	ld	(OFST-2,sp),a
1617                     ; 370     temph = (u16)((u16)(templ << (u8)6) | (u16)(temph << (u8)8));
1619  034c 4f            	clr	a
1620  034d 02            	rlwa	x,a
1621  034e 1f01          	ldw	(OFST-4,sp),x
1622  0350 7b03          	ld	a,(OFST-2,sp)
1623  0352 97            	ld	xl,a
1624  0353 a640          	ld	a,#64
1625  0355 42            	mul	x,a
1626  0356 01            	rrwa	x,a
1627  0357 1a02          	or	a,(OFST-3,sp)
1628  0359 01            	rrwa	x,a
1629  035a 1a01          	or	a,(OFST-4,sp)
1630  035c 01            	rrwa	x,a
1631  035d               L535:
1632                     ; 373   return ((u16)temph);
1636  035d 5b05          	addw	sp,#5
1637  035f 81            	ret	
1681                     ; 385 FlagStatus ADC2_GetFlagStatus(void)
1681                     ; 386 {
1682                     	switch	.text
1683  0360               _ADC2_GetFlagStatus:
1687                     ; 388   return ((u8)(ADC2->CSR & ADC2_CSR_EOC));
1689  0360 c65400        	ld	a,21504
1690  0363 a480          	and	a,#128
1693  0365 81            	ret	
1716                     ; 400 void ADC2_ClearFlag(void)
1716                     ; 401 {
1717                     	switch	.text
1718  0366               _ADC2_ClearFlag:
1722                     ; 402     ADC2->CSR &= (u8)(~ADC2_CSR_EOC);
1724  0366 721f5400      	bres	21504,#7
1725                     ; 403 }
1728  036a 81            	ret	
1752                     ; 413 ITStatus ADC2_GetITStatus(void)
1752                     ; 414 {
1753                     	switch	.text
1754  036b               _ADC2_GetITStatus:
1758                     ; 415   return ((u8)(ADC2->CSR & ADC2_CSR_EOC));
1760  036b c65400        	ld	a,21504
1761  036e a480          	and	a,#128
1764  0370 81            	ret	
1788                     ; 426 void ADC2_ClearITPendingBit(void)
1788                     ; 427 {
1789                     	switch	.text
1790  0371               _ADC2_ClearITPendingBit:
1794                     ; 428     ADC2->CSR &= (u8)(~ADC2_CSR_EOC);
1796  0371 721f5400      	bres	21504,#7
1797                     ; 429 }
1800  0375 81            	ret	
1813                     	xdef	_ADC2_ClearITPendingBit
1814                     	xdef	_ADC2_GetITStatus
1815                     	xdef	_ADC2_ClearFlag
1816                     	xdef	_ADC2_GetFlagStatus
1817                     	xdef	_ADC2_GetConversionValue
1818                     	xdef	_ADC2_StartConversion
1819                     	xdef	_ADC2_ExternalTriggerConfig
1820                     	xdef	_ADC2_ConversionConfig
1821                     	xdef	_ADC2_SchmittTriggerConfig
1822                     	xdef	_ADC2_PrescalerConfig
1823                     	xdef	_ADC2_ITConfig
1824                     	xdef	_ADC2_Cmd
1825                     	xdef	_ADC2_Init
1826                     	xdef	_ADC2_DeInit
1827                     	xref	_assert_failed
1846                     	end
