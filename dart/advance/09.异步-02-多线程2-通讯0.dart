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

void newThread1(SendPort messagePort) {
  print('当前线程' + Isolate.current.debugName!);
  ReceivePort r11 = ReceivePort();
  SendPort p11 = r11.sendPort;
  messagePort.send({"type": 'T1', "senPort": p11});

  r11.listen(((message) {
    print('接受主线程的消息');
    print(message);
  }));
}

// void newThread2(SendPort messagePort) {
//   print('当前线程' + Isolate.current.debugName!);
//   ReceivePort r1 = ReceivePort();
//   SendPort p1 = r1.sendPort;
//   messagePort.send({"type": 'T2', "senPort": p1});
// }

void multiThread() {
  Map<String, SendPort> map = new Map<String, SendPort>();

  ReceivePort r1 = ReceivePort();
  SendPort p1 = r1.sendPort;
  Isolate.spawn<SendPort>(newThread1, p1); // 线程是异步的

  // 接受线程的消息
  // r1.first  第一条消息
  r1.listen(((message) {
    message['senPort']?.send('主线程发给新线程的消息');
    // r1.close();
  }));
  // 接受消息
  print('结束');
}

void main(List<String> args) {
  multiThread();
}
