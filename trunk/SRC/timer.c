#include "timer.h"
#include <avr/io.h>
#include <avr/interrupt.h>

volatile unsigned char ftimer2ms_ok, ftimer10ms_ok, ftimer1s_ok;
unsigned char timer1s_count;

void timer_init(void)
{
	TCCR0 = (1<<WGM01)|(1<<CS02);   /* CTC, 256分频 */
	TCNT0 = 0;
	OCR0 = (FOSC/N/500-1);          /* 2ms, 500Hz */

	/* CTC, 1024分频, 注意分频设置与T/C0不同 */
	TCCR2 = (1<<WGM01)|(1<<CS02)|(1<<CS01)|(1<<CS00);
	TCNT2 = 0;
	OCR2 = (FOSC/1024/100-1);       /* 10ms, 100Hz */

	TIMSK = (1<<OCIE0)|(1<<OCIE2);
}

ISR(TIMER0_COMP_vect)
{
	ftimer2ms_ok = 1;
}

ISR(TIMER2_COMP_vect)
{
	ftimer10ms_ok = 1;
	if(++timer1s_count >= 100)
	{
		timer1s_count = 0;
		ftimer1s_ok = 1;
	}
}

