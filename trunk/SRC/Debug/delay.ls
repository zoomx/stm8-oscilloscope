   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.8 - 03 Dec 2008
   3                     ; Optimizer V4.2.8 - 03 Dec 2008
  45                     ; 3 void delay_us(u8 x)
  45                     ; 4 {
  47                     	switch	.text
  48  0000               _delay_us:
  50  0000 88            	push	a
  51       00000000      OFST:	set	0
  54  0001 2001          	jra	L13
  55  0003               L72:
  56                     ; 7         nop();
  59  0003 9d            	nop	
  62  0004               L13:
  63                     ; 5     while(x--)
  65  0004 7b01          	ld	a,(OFST+1,sp)
  66  0006 0a01          	dec	(OFST+1,sp)
  67  0008 4d            	tnz	a
  68  0009 26f8          	jrne	L72
  69                     ; 9 }
  72  000b 84            	pop	a
  73  000c 81            	ret	
  86                     	xdef	_delay_us
 105                     	end
