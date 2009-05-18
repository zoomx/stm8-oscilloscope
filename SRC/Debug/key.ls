   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.8 - 03 Dec 2008
   3                     ; Optimizer V4.2.8 - 03 Dec 2008
   5                     .const:	section	.text
   6  0000               _KEY_StateFsmTable:
   7  0000 01            	dc.b	1
   8  0001 00            	dc.b	0
   9  0002 00            	dc.b	0
  10  0003 00            	dc.b	0
  11  0004 02            	dc.b	2
  12  0005 00            	dc.b	0
  13  0006 05            	dc.b	5
  14  0007 40            	dc.b	64
  15  0008 03            	dc.b	3
  16  0009 00            	dc.b	0
  17  000a 50            	dc.b	80
  18  000b 80            	dc.b	128
  19  000c 04            	dc.b	4
  20  000d 00            	dc.b	0
  21  000e 64            	dc.b	100
  22  000f 00            	dc.b	0
  23  0010 04            	dc.b	4
  24  0011 00            	dc.b	0
  25  0012 14            	dc.b	20
  26  0013 c0            	dc.b	192
  56                     ; 41 void KEY_Init(void)
  56                     ; 42 {
  58                     	switch	.text
  59  0000               _KEY_Init:
  63                     ; 44 	GPIO_Init(KEY_PORT, KEY_PIN, GPIO_MODE_IN_FL_NO_IT); 
  65  0000 4b00          	push	#0
  66  0002 4b80          	push	#128
  67  0004 ae500f        	ldw	x,#20495
  68  0007 cd0000        	call	_GPIO_Init
  70  000a 85            	popw	x
  71                     ; 46 }
  74  000b 81            	ret	
 109                     ; 53 static u8 KEY_Read(void)
 109                     ; 54 {
 110                     	switch	.text
 111  000c               L12_KEY_Read:
 113  000c 88            	push	a
 114       00000001      OFST:	set	1
 117                     ; 56     u8 KCode = 0;
 119  000d 0f01          	clr	(OFST+0,sp)
 120                     ; 69     if( GPIO_ReadInputPin(KEY_PORT, KEY_PIN) == RESET )
 122  000f 4b80          	push	#128
 123  0011 ae500f        	ldw	x,#20495
 124  0014 cd0000        	call	_GPIO_ReadInputPin
 126  0017 5b01          	addw	sp,#1
 127  0019 4d            	tnz	a
 128  001a 2603          	jrne	L14
 129                     ; 70         KCode = 1;
 131  001c 4c            	inc	a
 132  001d 6b01          	ld	(OFST+0,sp),a
 133  001f               L14:
 134                     ; 71 	return KCode;
 136  001f 7b01          	ld	a,(OFST+0,sp)
 139  0021 5b01          	addw	sp,#1
 140  0023 81            	ret	
 143                     	bsct
 144  0000               L34_KScan_CurrState:
 145  0000 00            	dc.b	0
 146  0001               L74_KTimeCounter:
 147  0001 00            	dc.b	0
 148                     	switch	.ubsct
 149  0000               L54_OldKey:
 150  0000 00            	ds.b	1
 262                     ; 84 u8 KEY_Scan(void)
 262                     ; 85 {
 263                     	switch	.text
 264  0024               _KEY_Scan:
 266  0024 89            	pushw	x
 267       00000002      OFST:	set	2
 270                     ; 90 	u8 rKeyCode = 0;		// 0 for No key press
 272  0025 0f01          	clr	(OFST-1,sp)
 273                     ; 91 	u8 CurrKey = KEY_Read();
 275  0027 ade3          	call	L12_KEY_Read
 277  0029 6b02          	ld	(OFST+0,sp),a
 278                     ; 93 	if( (CurrKey != 0) && (CurrKey == OldKey) )
 280  002b 2723          	jreq	L521
 282  002d b100          	cp	a,L54_OldKey
 283  002f 261f          	jrne	L521
 284                     ; 95 		if(++KTimeCounter >= KEY_StateFsmTable[KScan_CurrState].KPressTime ) 
 286  0031 b600          	ld	a,L34_KScan_CurrState
 287  0033 97            	ld	xl,a
 288  0034 a604          	ld	a,#4
 289  0036 3c01          	inc	L74_KTimeCounter
 290  0038 42            	mul	x,a
 291  0039 b601          	ld	a,L74_KTimeCounter
 292  003b d10002        	cp	a,(_KEY_StateFsmTable+2,x)
 293  003e 251f          	jrult	L131
 294                     ; 97 			KTimeCounter = 0;
 296  0040 3f01          	clr	L74_KTimeCounter
 297                     ; 98 			rKeyCode = KEY_StateFsmTable[KScan_CurrState].KPressType | CurrKey;
 299  0042 d60003        	ld	a,(_KEY_StateFsmTable+3,x)
 300  0045 1a02          	or	a,(OFST+0,sp)
 301  0047 6b01          	ld	(OFST-1,sp),a
 302                     ; 99 			KScan_CurrState = KEY_StateFsmTable[KScan_CurrState].KPressNext;
 304  0049 d60000        	ld	a,(_KEY_StateFsmTable,x)
 305  004c b700          	ld	L34_KScan_CurrState,a
 306  004e 200f          	jra	L131
 307  0050               L521:
 308                     ; 105 		KScan_CurrState = KEY_StateFsmTable[KScan_CurrState].NoKeyNext;
 310  0050 b600          	ld	a,L34_KScan_CurrState
 311  0052 97            	ld	xl,a
 312  0053 a604          	ld	a,#4
 313  0055 42            	mul	x,a
 314  0056 d60001        	ld	a,(_KEY_StateFsmTable+1,x)
 315  0059 b700          	ld	L34_KScan_CurrState,a
 316                     ; 106 		OldKey = CurrKey;
 318  005b 7b02          	ld	a,(OFST+0,sp)
 319  005d b700          	ld	L54_OldKey,a
 320  005f               L131:
 321                     ; 108 	return rKeyCode;
 323  005f 7b01          	ld	a,(OFST-1,sp)
 326  0061 85            	popw	x
 327  0062 81            	ret	
 395                     	xdef	_KEY_StateFsmTable
 396                     	xdef	_KEY_Scan
 397                     	xdef	_KEY_Init
 398                     	xref	_GPIO_ReadInputPin
 399                     	xref	_GPIO_Init
 418                     	end
