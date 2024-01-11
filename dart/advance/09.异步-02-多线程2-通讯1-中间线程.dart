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
Future sendToReceive(SendPort port, msg) {
  print('开始发送消息:' + msg.toString());
  ReceivePort response = ReceivePort();
  port.send([msg, response.sendPort]);
  return response.first;
}

void newThread1(SendPort messagePort) {
  print('当前线程' + Isolate.current.debugName!);
  ReceivePort r11 = ReceivePort();
  SendPort p11 = r11.sendPort;

  messagePort.send(p11);
  r11.listen(((message) async {
    var data = message[0];
    print('新线程收到了主线程的消息： $data');
    SendPort replyPort = message[1];
    replyPort.send(data);
  }));
}

void multiThread() {
  ReceivePort r1 = ReceivePort();
  SendPort p1 = r1.sendPort;
  Isolate.spawn<SendPort>(newThread1, p1); // 线程是异步的

  // 接受线程的消息
  // R1.first  第一条消息
  r1.listen(((message) async {
    if (message is SendPort) {
      // ignore: unused_local_variable
      var msg = await sendToReceive(message, '主线程发给新线程的消息');
      print('主线程接受到了消息: $msg');
      var msg1 = await sendToReceive(message, '222');
      print('主线程接受到了消息: $msg1');
    }
    // r1.close();
  }));
  print('结束');
}

void main(List<String> args) {
  multiThread();
}
