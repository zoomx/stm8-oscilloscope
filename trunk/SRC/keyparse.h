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

#define KEY_UP          7
#define KEY_DOWN        10
#define KEY_LEFT        8
#define KEY_RIGHT       9
#define KEY_MODE        2
#define KEY_TBUP        1
#define KEY_TBDOWN      5
#define KEY_TRIGUP      4
#define KEY_TRIGDOWN    6
#define KEY_GAINUP      11
#define KEY_GAINDOWN    12
#define KEY_RUNSTOP     3

extern void KeyParse_Init(void);
extern void KeyParse(u8 kcode);

#endif /* __KEYPARSE_STMDSO_H_*/