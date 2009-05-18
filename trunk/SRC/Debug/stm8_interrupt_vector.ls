   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.8 - 03 Dec 2008
   3                     ; Optimizer V4.2.8 - 03 Dec 2008
  35                     ; 15 @far @interrupt void NonHandledInterrupt (void)
  35                     ; 16 {
  36                     	switch	.text
  37  0000               f_NonHandledInterrupt:
  41                     ; 20 	return;
  44  0000 80            	iret	
  70                     ; 24 @far @interrupt void TIM4_UPD_OVF_IRQHandler (void)
  70                     ; 25 {
  71                     	switch	.text
  72  0001               f_TIM4_UPD_OVF_IRQHandler:
  74  0001 3b0002        	push	c_x+2
  75  0004 be00          	ldw	x,c_x
  76  0006 89            	pushw	x
  77  0007 3b0002        	push	c_y+2
  78  000a be00          	ldw	x,c_y
  81                     ; 27     if( ++counter_10ms >= 10 )
  83  000c 3c00          	inc	L12_counter_10ms
  84  000e 89            	pushw	x
  85  000f b600          	ld	a,L12_counter_10ms
  86  0011 a10a          	cp	a,#10
  87  0013 2506          	jrult	L33
  88                     ; 29         counter_10ms = 0;
  90  0015 3f00          	clr	L12_counter_10ms
  91                     ; 30         flag_10ms_ok = 1;
  93  0017 35010000      	mov	_flag_10ms_ok,#1
  94  001b               L33:
  95                     ; 32     TIM4_ClearITPendingBit(TIM4_IT_UPDATE);
  97  001b a601          	ld	a,#1
  98  001d cd0000        	call	_TIM4_ClearITPendingBit
 100                     ; 33 	return;
 103  0020 85            	popw	x
 104  0021 bf00          	ldw	c_y,x
 105  0023 320002        	pop	c_y+2
 106  0026 85            	popw	x
 107  0027 bf00          	ldw	c_x,x
 108  0029 320002        	pop	c_x+2
 109  002c 80            	iret	
 146                     ; 48 @far @interrupt void ADC2_IRQHandler (void)
 146                     ; 49 {
 147                     	switch	.text
 148  002d               f_ADC2_IRQHandler:
 150       00000001      OFST:	set	1
 151  002d 3b0002        	push	c_x+2
 152  0030 be00          	ldw	x,c_x
 153  0032 89            	pushw	x
 154  0033 3b0002        	push	c_y+2
 155  0036 be00          	ldw	x,c_y
 156  0038 89            	pushw	x
 157  0039 88            	push	a
 160                     ; 50     u8 Conversion_Value = ADC2->DRH>>1;     // 只读取高7位结果
 162  003a c65404        	ld	a,21508
 163  003d 44            	srl	a
 164  003e 6b01          	ld	(OFST+0,sp),a
 165                     ; 51     if( ADCState == Triggered )
 167  0040 b600          	ld	a,_ADCState
 168  0042 a102          	cp	a,#2
 169  0044 2615          	jrne	L35
 170                     ; 53         ADC_Buffer[ADC_Index++] = Conversion_Value;
 172  0046 be00          	ldw	x,_ADC_Index
 173  0048 7b01          	ld	a,(OFST+0,sp)
 174  004a d70000        	ld	(_ADC_Buffer,x),a
 175  004d 5c            	incw	x
 176  004e bf00          	ldw	_ADC_Index,x
 177                     ; 54         if(ADC_Index >= ADC_BUFFER_SIZE)
 179  0050 be00          	ldw	x,_ADC_Index
 180  0052 a30140        	cpw	x,#320
 181  0055 2504          	jrult	L35
 182                     ; 56             ADCState = WaitTrigger;
 184  0057 35010000      	mov	_ADCState,#1
 185  005b               L35:
 186                     ; 59     ADC2_ClearITPendingBit();
 188  005b cd0000        	call	_ADC2_ClearITPendingBit
 190                     ; 60 }
 193  005e 84            	pop	a
 194  005f 85            	popw	x
 195  0060 bf00          	ldw	c_y,x
 196  0062 320002        	pop	c_y+2
 197  0065 85            	popw	x
 198  0066 bf00          	ldw	c_x,x
 199  0068 320002        	pop	c_x+2
 200  006b 80            	iret	
 202                     .const:	section	.text
 203  0000               __vectab:
 204  0000 82            	dc.b	130
 206  0001 00            	dc.b	page(__stext)
 207  0002 0000          	dc.w	__stext
 208  0004 82            	dc.b	130
 210  0005 00            	dc.b	page(f_NonHandledInterrupt)
 211  0006 0000          	dc.w	f_NonHandledInterrupt
 212  0008 82            	dc.b	130
 214  0009 00            	dc.b	page(f_NonHandledInterrupt)
 215  000a 0000          	dc.w	f_NonHandledInterrupt
 216  000c 82            	dc.b	130
 218  000d 00            	dc.b	page(f_NonHandledInterrupt)
 219  000e 0000          	dc.w	f_NonHandledInterrupt
 220  0010 82            	dc.b	130
 222  0011 00            	dc.b	page(f_NonHandledInterrupt)
 223  0012 0000          	dc.w	f_NonHandledInterrupt
 224  0014 82            	dc.b	130
 226  0015 00            	dc.b	page(f_NonHandledInterrupt)
 227  0016 0000          	dc.w	f_NonHandledInterrupt
 228  0018 82            	dc.b	130
 230  0019 00            	dc.b	page(f_NonHandledInterrupt)
 231  001a 0000          	dc.w	f_NonHandledInterrupt
 232  001c 82            	dc.b	130
 234  001d 00            	dc.b	page(f_NonHandledInterrupt)
 235  001e 0000          	dc.w	f_NonHandledInterrupt
 236  0020 82            	dc.b	130
 238  0021 00            	dc.b	page(f_NonHandledInterrupt)
 239  0022 0000          	dc.w	f_NonHandledInterrupt
 240  0024 82            	dc.b	130
 242  0025 00            	dc.b	page(f_NonHandledInterrupt)
 243  0026 0000          	dc.w	f_NonHandledInterrupt
 244  0028 82            	dc.b	130
 246  0029 00            	dc.b	page(f_NonHandledInterrupt)
 247  002a 0000          	dc.w	f_NonHandledInterrupt
 248  002c 82            	dc.b	130
 250  002d 00            	dc.b	page(f_NonHandledInterrupt)
 251  002e 0000          	dc.w	f_NonHandledInterrupt
 252  0030 82            	dc.b	130
 254  0031 00            	dc.b	page(f_NonHandledInterrupt)
 255  0032 0000          	dc.w	f_NonHandledInterrupt
 256  0034 82            	dc.b	130
 258  0035 00            	dc.b	page(f_NonHandledInterrupt)
 259  0036 0000          	dc.w	f_NonHandledInterrupt
 260  0038 82            	dc.b	130
 262  0039 00            	dc.b	page(f_NonHandledInterrupt)
 263  003a 0000          	dc.w	f_NonHandledInterrupt
 264  003c 82            	dc.b	130
 266  003d 00            	dc.b	page(f_NonHandledInterrupt)
 267  003e 0000          	dc.w	f_NonHandledInterrupt
 268  0040 82            	dc.b	130
 270  0041 00            	dc.b	page(f_NonHandledInterrupt)
 271  0042 0000          	dc.w	f_NonHandledInterrupt
 272  0044 82            	dc.b	130
 274  0045 00            	dc.b	page(f_NonHandledInterrupt)
 275  0046 0000          	dc.w	f_NonHandledInterrupt
 276  0048 82            	dc.b	130
 278  0049 00            	dc.b	page(f_NonHandledInterrupt)
 279  004a 0000          	dc.w	f_NonHandledInterrupt
 280  004c 82            	dc.b	130
 282  004d 00            	dc.b	page(f_NonHandledInterrupt)
 283  004e 0000          	dc.w	f_NonHandledInterrupt
 284  0050 82            	dc.b	130
 286  0051 00            	dc.b	page(f_NonHandledInterrupt)
 287  0052 0000          	dc.w	f_NonHandledInterrupt
 288  0054 82            	dc.b	130
 290  0055 00            	dc.b	page(f_NonHandledInterrupt)
 291  0056 0000          	dc.w	f_NonHandledInterrupt
 292  0058 82            	dc.b	130
 294  0059 00            	dc.b	page(f_NonHandledInterrupt)
 295  005a 0000          	dc.w	f_NonHandledInterrupt
 296  005c 82            	dc.b	130
 298  005d 00            	dc.b	page(f_NonHandledInterrupt)
 299  005e 0000          	dc.w	f_NonHandledInterrupt
 300  0060 82            	dc.b	130
 302  0061 2d            	dc.b	page(f_ADC2_IRQHandler)
 303  0062 002d          	dc.w	f_ADC2_IRQHandler
 304  0064 82            	dc.b	130
 306  0065 01            	dc.b	page(f_TIM4_UPD_OVF_IRQHandler)
 307  0066 0001          	dc.w	f_TIM4_UPD_OVF_IRQHandler
 308  0068 82            	dc.b	130
 310  0069 00            	dc.b	page(f_NonHandledInterrupt)
 311  006a 0000          	dc.w	f_NonHandledInterrupt
 312  006c 82            	dc.b	130
 314  006d 00            	dc.b	page(f_NonHandledInterrupt)
 315  006e 0000          	dc.w	f_NonHandledInterrupt
 316  0070 82            	dc.b	130
 318  0071 00            	dc.b	page(f_NonHandledInterrupt)
 319  0072 0000          	dc.w	f_NonHandledInterrupt
 320  0074 82            	dc.b	130
 322  0075 00            	dc.b	page(f_NonHandledInterrupt)
 323  0076 0000          	dc.w	f_NonHandledInterrupt
 324  0078 82            	dc.b	130
 326  0079 00            	dc.b	page(f_NonHandledInterrupt)
 327  007a 0000          	dc.w	f_NonHandledInterrupt
 328  007c 82            	dc.b	130
 330  007d 00            	dc.b	page(f_NonHandledInterrupt)
 331  007e 0000          	dc.w	f_NonHandledInterrupt
 391                     	xdef	__vectab
 392                     	xref	__stext
 393                     	xdef	f_ADC2_IRQHandler
 394                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 395                     	switch	.ubsct
 396  0000               L12_counter_10ms:
 397  0000 00            	ds.b	1
 398                     	xdef	f_NonHandledInterrupt
 399                     	xref.b	_ADCState
 400                     	xref.b	_ADC_Index
 401                     	xref	_ADC_Buffer
 402                     	xref.b	_flag_10ms_ok
 403                     	xref	_TIM4_ClearITPendingBit
 404                     	xref	_ADC2_ClearITPendingBit
 405                     	xref.b	c_x
 406                     	xref.b	c_y
 426                     	end
