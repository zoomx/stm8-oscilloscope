#ifndef _TIMER_LXF_H
#define _TIMER_LXF_H

#define	FOSC    (11059200UL)
#define N       256
/* 
 * 本模块使用说明：
 * 调用timer_init()初始化定时器资源后，查询时间标志
*/
extern volatile unsigned char ftimer2ms_ok;
extern volatile unsigned char ftimer10ms_ok;
extern volatile unsigned char ftimer1s_ok;

extern void timer_init(void);

#endif
