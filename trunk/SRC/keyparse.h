/**
  ******************************************************************************
  * @file stmdso\keyparse.h
  * @brief 本文件包含键值定义和按键处理函数的声明。
  * @author ifree64  leexiaofeng@gmail.com
  * @version V0.1
  * @date 04/11/2009
  ******************************************************************************
 **/

#ifndef __KEYPARSE_STMDSO_H_
#define __KEYPARSE_STMDSO_H_

#define KEY_UP          1
#define KEY_DOWN        2
#define KEY_LEFT        3
#define KEY_RIGHT       4
#define KEY_MODE        5
#define KEY_TBUP        6
#define KEY_TBDOWN      7
#define KEY_TRIGUP      8
#define KEY_TRIGDOWN    9
#define KEY_GAINUP      10
#define KEY_GAINDOWN    11
#define KEY_RUNSTOP     12

extern void KeyParse_Init(void);
extern void KeyParse(u8 kcode);

#endif /* __KEYPARSE_STMDSO_H_*/