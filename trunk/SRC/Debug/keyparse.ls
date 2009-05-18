   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.8 - 03 Dec 2008
   3                     ; Optimizer V4.2.8 - 03 Dec 2008
  33                     ; 17 void KeyParse_Init(void)
  33                     ; 18 {
  35                     	switch	.text
  36  0000               _KeyParse_Init:
  40                     ; 20 }
  43  0000 81            	ret	
  89                     .const:	section	.text
  90  0000               L24:
  91  0000 000d          	dc.w	L12
  92  0002 0010          	dc.w	L32
  93  0004 0013          	dc.w	L52
  94  0006 0016          	dc.w	L72
  95  0008 002b          	dc.w	L54
  96  000a 0025          	dc.w	L14
  97  000c 0028          	dc.w	L34
  98  000e 0019          	dc.w	L13
  99  0010 001c          	dc.w	L33
 100  0012 001f          	dc.w	L53
 101  0014 0022          	dc.w	L73
 102  0016 002e          	dc.w	L74
 103                     ; 22 void KeyParse(u8 kcode)
 103                     ; 23 {
 104                     	switch	.text
 105  0001               _KeyParse:
 109                     ; 24     switch(kcode)
 112                     ; 62         default:
 112                     ; 63             break;
 113  0001 4a            	dec	a
 114  0002 a10c          	cp	a,#12
 115  0004 242b          	jruge	L37
 116  0006 5f            	clrw	x
 117  0007 97            	ld	xl,a
 118  0008 58            	sllw	x
 119  0009 de0000        	ldw	x,(L24,x)
 120  000c fc            	jp	(x)
 121  000d               L12:
 122                     ; 26         case KEY_UP:
 122                     ; 27             WDraw_DisplayUp();
 125                     ; 28             break;
 128  000d cc0000        	jp	_WDraw_DisplayUp
 129  0010               L32:
 130                     ; 29         case KEY_DOWN:
 130                     ; 30             WDraw_DisplayDown();
 133                     ; 31             break;
 136  0010 cc0000        	jp	_WDraw_DisplayDown
 137  0013               L52:
 138                     ; 32         case KEY_LEFT:
 138                     ; 33             WDraw_DisplayLeft();
 141                     ; 34             break;
 144  0013 cc0000        	jp	_WDraw_DisplayLeft
 145  0016               L72:
 146                     ; 35         case KEY_RIGHT:
 146                     ; 36             WDraw_DisplayRight();
 149                     ; 37             break;
 152  0016 cc0000        	jp	_WDraw_DisplayRight
 153  0019               L13:
 154                     ; 38         case KEY_TRIGUP:
 154                     ; 39             ADC_TriggerVoltageAdd();
 157                     ; 40             break;
 160  0019 cc0000        	jp	_ADC_TriggerVoltageAdd
 161  001c               L33:
 162                     ; 41         case KEY_TRIGDOWN:
 162                     ; 42             ADC_TriggerVoltageSub();
 165                     ; 43             break;
 168  001c cc0000        	jp	_ADC_TriggerVoltageSub
 169  001f               L53:
 170                     ; 44         case KEY_GAINUP:
 170                     ; 45             ADC_GainAdd();
 173                     ; 46             break;
 176  001f cc0000        	jp	_ADC_GainAdd
 177  0022               L73:
 178                     ; 47         case KEY_GAINDOWN:
 178                     ; 48             ADC_GainSub();
 181                     ; 49             break;
 184  0022 cc0000        	jp	_ADC_GainSub
 185  0025               L14:
 186                     ; 50         case KEY_TBUP:
 186                     ; 51             ADC_TimeBaseAdd();
 189                     ; 52             break;
 192  0025 cc0000        	jp	_ADC_TimeBaseAdd
 193  0028               L34:
 194                     ; 53         case KEY_TBDOWN:
 194                     ; 54             ADC_TimeBaseSub();
 197                     ; 55             break;
 200  0028 cc0000        	jp	_ADC_TimeBaseSub
 201  002b               L54:
 202                     ; 56         case KEY_MODE:
 202                     ; 57             DSO_ModeChange();
 205                     ; 58             break;
 208  002b cc0000        	jp	_DSO_ModeChange
 209  002e               L74:
 210                     ; 59         case KEY_RUNSTOP:
 210                     ; 60             DSO_RunStop();
 212  002e cd0000        	call	_DSO_RunStop
 214                     ; 61             break;
 216                     ; 62         default:
 216                     ; 63             break;
 218  0031               L37:
 219                     ; 65 }
 222  0031 81            	ret	
 235                     	xref	_DSO_RunStop
 236                     	xref	_DSO_ModeChange
 237                     	xref	_WDraw_DisplayRight
 238                     	xref	_WDraw_DisplayLeft
 239                     	xref	_WDraw_DisplayDown
 240                     	xref	_WDraw_DisplayUp
 241                     	xref	_ADC_TriggerVoltageSub
 242                     	xref	_ADC_TriggerVoltageAdd
 243                     	xref	_ADC_TimeBaseSub
 244                     	xref	_ADC_TimeBaseAdd
 245                     	xref	_ADC_GainSub
 246                     	xref	_ADC_GainAdd
 247                     	xdef	_KeyParse
 248                     	xdef	_KeyParse_Init
 267                     	end
