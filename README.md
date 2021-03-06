# Description

## Bank

- NexysA7-100T
- VGA 640*480

##  一、实验目的

1、学会简单数字系统的设计方法；
2、掌握层次化设计方法。

## 二、实验内容及要求

要求设计一个带闹钟功能计时器。
它包括以下几个组成部分：

- 显示屏，由 4 个七段数码管组成，用于显示当前时间(时：分)或设置的闹钟时间

- 数字键‘0’～‘9’，用于输入新的时间或新的闹钟时间

- TIME(时间)键，用于确定新的时间设置

- ALARM(闹钟)键，用于确定新的闹钟时间设置，或显示已设置的闹钟时间

- 扬声器，在当前时钟时间与闹钟时间相同时，发出蜂鸣声。

  1、 要求完成如下功能：

  (1) 计时功能：这是本计时器设计的基本功能，每隔一分钟计时一次，并在显示屏上显
  示当前时间。
  (2) 闹钟功能：如果当前时间与设置的闹钟时间相同，则扬声器发出蜂鸣声。
  (3) 设置新的计时器时间：用户用数字键‘0’～‘9’输入新的时间，然后按 "TIME"键确认。
  在输入过程中，输入数字在显示屏上从右到左依次显示。例如，用户要设置新的时间 12：
  34， 则按顺序输入“1”， “2”， “3”， “4”键，与之对应，显示屏上依次显示的信息为： “1”， “12”，
  “123”， “1234"。如果用户在输入任意几个数字后较长时间内，例如 5 s，没有按任何键，则
  计时器恢复到正常的计时显示状态。
  (4) 设置新的闹钟时间：用户用数字键“0”~“9”输入新的时间，然后按“ALARM”键确认。
  过程与(3)类似。
  (5) 显示所设置的闹钟时间：在正常计时显示状态下，用户直接按下“ALARM”键，则
  已设置的闹钟时间将显示在显示屏上。
  2、进阶要求：
  1) 采用 LCD 显示时间；
  2）采用 VGA 显示时间。 

完成如下功能：

- 计时功能：这是本计时器设计的基本功能，每隔一分钟计时一次，并在显示屏上显
  示当前时间。
-  闹钟功能：如果当前时间与设置的闹钟时间相同，则扬声器发出蜂鸣声。
-  设置新的计时器时间：用户用数字键‘0’～‘9’输入新的时间，然后按 "TIME"键确认。
  在输入过程中，输入数字在显示屏上从右到左依次显示。例如，用户要设置新的时间 12：
  34， 则按顺序输入“1”， “2”， “3”， “4”键，与之对应，显示屏上依次显示的信息为： “1”， “12”，
  “123”， “1234"。如果用户在输入任意几个数字后较长时间内，例如 5 s，没有按任何键，则
  计时器恢复到正常的计时显示状态。
-  设置新的闹钟时间：用户用数字键“0”~“9”输入新的时间，然后按“ALARM”键确认。
  过程与(3)类似。
- 显示所设置的闹钟时间：在正常计时显示状态下，用户直接按下“ALARM”键，则
  已设置的闹钟时间将显示在显示屏上。
- 进阶要求：
  采用 VGA 显示时间。 