// 概念和js的完全一样
import 'dart:async';

void main(List<String> args) {
  print('同步任务：开始');
  Timer.run(() {
    print('事件任务 A: 1');

    scheduleMicrotask(() {
      print('事件任务 A: a中的 宏任务 A');
    });
    scheduleMicrotask(() {
      print('事件任务 A: a中的 宏任务 B');
    });
  });

  scheduleMicrotask(() {
    print('同步任务：中的宏任务C');
    Timer.run(() {
      print('宏任务B：中的事件任务B');
    });
  });

  print('同步任务 结束');
}

// 打印顺序

// 同步任务：开始    =》=> 同时 把事件任务A放入队列
// 同步任务 结束
// 同步任务：中的宏任务C     =》 微任务C   => 同时 把事件任务B放入队列
/// 微任务队列没有了 开始执行宏任务队列【A,B】
// 事件任务 A: 1         =》 微任务队列里面有两个宏任务 A B
// 事件任务 A: a中的 宏任务 A
// 事件任务 A: a中的 宏任务 B
/// 微任务队列没有了 开始执行宏任务队列[B]
// 宏任务B：中的事件任务B