import 'dart:async';
import 'dart:isolate';

//! 语法
/**
 * 
 * import 'dart:isolate';
 * 
 * Isolate.spawn(entryPoint,message)
 *  
 * entryPoint: 必须是一个顶层方法或者静态方法，可以访问到的
 * 
 * message： 
 *  1. 原始类型
 *  2. SendPort实例 ReceivePort().sendPort 
 *  3. 可以是包含1和2 的list和map，也可以嵌套
 * 
 * 
 * 
 * 
 * comppute 是对Isolate.spawn的封装
 * import 'package:flutter/foundation.dart';
 */

void newThread1(String message) {
  print('当前线程' + Isolate.current.debugName!);
  print(message);
}

void newThread2(String message) {
  print('当前线程' + Isolate.current.debugName!);
  print(message);
}

void newThread3(String message) {
  print('当前线程' + Isolate.current.debugName!);
  print(message);
}

void multiThread() {
  print('开始');
  print('当前线程' + Isolate.current.debugName!);
  // 线程是独立的  执行的顺序也是不一定的，多执行几次文件  输出顺序就变了
  Isolate.spawn(newThread1, 'hello1'); // 线程是异步的
  Isolate.spawn(newThread2, 'hello2'); // 线程是异步的
  Isolate.spawn(newThread3, 'hello3'); // 线程是异步的
  print('结束');
}

void main(List<String> args) {
  multiThread();
}
