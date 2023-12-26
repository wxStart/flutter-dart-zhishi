###  问题处理
#### 非正常关闭 清楚缓存
删除`/Users/wx/development/flutter/bin/cache/lockfile`文件

### flutter介绍

1. 一切皆来自 `package:flutter/material.dart`
2. Widget 分为有状态（stateful）的和无状态的（stateless）
3. 不依赖原生UI： 拥有独立渲染的引擎
4. 核心渲染：增量渲染（都是重新构建新的渲染界面,没有复用的概念）
5. 为什么大量使用 final修饰的属性，const 修饰构造方法（常量对象）
   a. 因为渲染逻辑是增量渲染。widget结构式树状结构。
   b. 想改变屏幕内容就直接改变widget对象
   c. 常量对象创建效率更高


#### 常用的网站 

+ [中文文档](https://flutterchina.club/)   
+ [Dart包](https://pub.dev/) 

