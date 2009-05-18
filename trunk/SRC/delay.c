#include "delay.h"

void delay_us(u8 x)
{
    while(x--)
    {
        nop();
    }
}
