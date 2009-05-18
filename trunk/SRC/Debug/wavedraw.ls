   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.8 - 03 Dec 2008
   3                     ; Optimizer V4.2.8 - 03 Dec 2008
  48                     ; 16 static void WDraw_DrawInterface(void)
  48                     ; 17 {
  50                     	switch	.text
  51  0000               L3_WDraw_DrawInterface:
  53  0000 88            	push	a
  54       00000001      OFST:	set	1
  57                     ; 19     LCD_Clear();
  59  0001 cd0000        	call	_LCD_Clear
  61                     ; 20     for(i = 0; i < 64; i+=16)
  63  0004 0f01          	clr	(OFST+0,sp)
  64  0006               L13:
  65                     ; 21         LCD_BufferDrawXDotLine(0, i, 128, LCD_SET);
  67  0006 4b02          	push	#2
  68  0008 4b80          	push	#128
  69  000a 7b03          	ld	a,(OFST+2,sp)
  70  000c 97            	ld	xl,a
  71  000d 4f            	clr	a
  72  000e 95            	ld	xh,a
  73  000f cd0000        	call	_LCD_BufferDrawXDotLine
  75  0012 85            	popw	x
  76                     ; 20     for(i = 0; i < 64; i+=16)
  78  0013 7b01          	ld	a,(OFST+0,sp)
  79  0015 ab10          	add	a,#16
  80  0017 6b01          	ld	(OFST+0,sp),a
  83  0019 a140          	cp	a,#64
  84  001b 25e9          	jrult	L13
  85                     ; 22     for(i = 0; i <129; i+=16)
  87  001d 0f01          	clr	(OFST+0,sp)
  88  001f               L73:
  89                     ; 23         LCD_BufferDrawYDotLine(i, 0, 63, LCD_SET);
  91  001f 4b02          	push	#2
  92  0021 4b3f          	push	#63
  93  0023 5f            	clrw	x
  94  0024 7b03          	ld	a,(OFST+2,sp)
  95  0026 95            	ld	xh,a
  96  0027 cd0000        	call	_LCD_BufferDrawYDotLine
  98  002a 85            	popw	x
  99                     ; 22     for(i = 0; i <129; i+=16)
 101  002b 7b01          	ld	a,(OFST+0,sp)
 102  002d ab10          	add	a,#16
 103  002f 6b01          	ld	(OFST+0,sp),a
 106  0031 a181          	cp	a,#129
 107  0033 25ea          	jrult	L73
 108                     ; 24 }
 111  0035 84            	pop	a
 112  0036 81            	ret	
 136                     ; 26 void WDraw_Init(void)
 136                     ; 27 {
 137                     	switch	.text
 138  0037               _WDraw_Init:
 142                     ; 28 	WDraw_DrawInterface();
 145                     ; 30 }
 148  0037 20c7          	jp	L3_WDraw_DrawInterface
 196                     ; 32 void WDraw_DisplayUpdate(@near u8 *pWaveData)
 196                     ; 33 {
 197                     	switch	.text
 198  0039               _WDraw_DisplayUpdate:
 200  0039 89            	pushw	x
 201  003a 88            	push	a
 202       00000001      OFST:	set	1
 205                     ; 35     LCD_Clear();
 207  003b cd0000        	call	_LCD_Clear
 209                     ; 36     WDraw_DrawInterface();
 211  003e adc0          	call	L3_WDraw_DrawInterface
 213                     ; 38     for( j = 0 ; j < 160 ; ++j )
 215  0040 0f01          	clr	(OFST+0,sp)
 216  0042               L77:
 217                     ; 39         LCD_BufferDrawLine(j, pWaveData[j], j+1, pWaveData[j+1], LCD_SET); 
 219  0042 4b02          	push	#2
 220  0044 7b02          	ld	a,(OFST+1,sp)
 221  0046 5f            	clrw	x
 222  0047 97            	ld	xl,a
 223  0048 72fb03        	addw	x,(OFST+2,sp)
 224  004b e601          	ld	a,(1,x)
 225  004d 88            	push	a
 226  004e 7b03          	ld	a,(OFST+2,sp)
 227  0050 4c            	inc	a
 228  0051 88            	push	a
 229  0052 7b05          	ld	a,(OFST+4,sp)
 230  0054 97            	ld	xl,a
 231  0055 7b06          	ld	a,(OFST+5,sp)
 232  0057 1b04          	add	a,(OFST+3,sp)
 233  0059 2401          	jrnc	L03
 234  005b 5c            	incw	x
 235  005c               L03:
 236  005c 02            	rlwa	x,a
 237  005d f6            	ld	a,(x)
 238  005e 97            	ld	xl,a
 239  005f 7b04          	ld	a,(OFST+3,sp)
 240  0061 95            	ld	xh,a
 241  0062 cd0000        	call	_LCD_BufferDrawLine
 243  0065 5b03          	addw	sp,#3
 244                     ; 38     for( j = 0 ; j < 160 ; ++j )
 246  0067 0c01          	inc	(OFST+0,sp)
 249  0069 7b01          	ld	a,(OFST+0,sp)
 250  006b a1a0          	cp	a,#160
 251  006d 25d3          	jrult	L77
 252                     ; 40 }
 255  006f 5b03          	addw	sp,#3
 256  0071 81            	ret	
 279                     ; 42 void WDraw_DisplayUp(void)
 279                     ; 43 {
 280                     	switch	.text
 281  0072               _WDraw_DisplayUp:
 285                     ; 45 }
 288  0072 81            	ret	
 311                     ; 47 void WDraw_DisplayDown(void)
 311                     ; 48 {
 312                     	switch	.text
 313  0073               _WDraw_DisplayDown:
 317                     ; 50 }
 320  0073 81            	ret	
 343                     ; 52 void WDraw_DisplayLeft(void)
 343                     ; 53 {
 344                     	switch	.text
 345  0074               _WDraw_DisplayLeft:
 349                     ; 55 }
 352  0074 81            	ret	
 375                     ; 57 void WDraw_DisplayRight(void)
 375                     ; 58 {
 376                     	switch	.text
 377  0075               _WDraw_DisplayRight:
 381                     ; 60 }
 384  0075 81            	ret	
 420                     ; 62 void WDraw_SetCH1TimeBaseInfo(unsigned char *tbinfo)
 420                     ; 63 {
 421                     	switch	.text
 422  0076               _WDraw_SetCH1TimeBaseInfo:
 426                     ; 65 }
 429  0076 81            	ret	
 465                     ; 67 void WDraw_SetCH1GainInfo(unsigned char *gainInfo)
 465                     ; 68 {
 466                     	switch	.text
 467  0077               _WDraw_SetCH1GainInfo:
 471                     ; 70 }
 474  0077 81            	ret	
 487                     	xref	_LCD_BufferDrawYDotLine
 488                     	xref	_LCD_BufferDrawXDotLine
 489                     	xref	_LCD_BufferDrawLine
 490                     	xref	_LCD_Clear
 491                     	xdef	_WDraw_SetCH1GainInfo
 492                     	xdef	_WDraw_SetCH1TimeBaseInfo
 493                     	xdef	_WDraw_DisplayRight
 494                     	xdef	_WDraw_DisplayLeft
 495                     	xdef	_WDraw_DisplayDown
 496                     	xdef	_WDraw_DisplayUp
 497                     	xdef	_WDraw_DisplayUpdate
 498                     	xdef	_WDraw_Init
 517                     	end
