import 'dart:async';

void main(List<String> args) {
  print('开始');
  Timer.run(() {
    print('宏任务 1');
  }); // 宏任务
  new Future(() {
    // 是一个宏任务 放到事件队列中
    print('宏任务2');
    Future.microtask(() => print('宏任务2 Future.microtask')); // 微任务
    return 123;
  }).then((value) => print("  Future $value")); // 宏任务
  Future.sync(() => print('Future.sync')); // 同步
  Future.microtask(() => print('Future.microtask')); // 微任务

  Future.value(Future(() {
    print('宏任务 3');
    return 124;
  })).then((value) {
    print("Future $value");
  }); // 宏任务

  Future.value(123).then((value) {
    print("Future.value $value");
  }); // 微任务

  print('结束');
}
