import 'dart:async';

void main(List<String> args) {
  Timer.run(() {
    print('timer 4');
  });
  final f = new Future(() {
    // 是一个宏任务 放到事件队列中
    print('创建了2');
    return 123;
  });

  f.then((value) => print(value));
  print('结束了1');

  // 两秒后打印
  Future.delayed(Duration(seconds: 2), () => 1234)
      .then((value) => print(value));
  // 两秒后打印
  Future.delayed(Duration(seconds: 2), () {
    throw Error();
  }).then((value) => print(value)).catchError(
    (err) {
      print(err);
    },
    test: (error) {
      print('错误信息');
      return false;
    },
  ).whenComplete(() {
    print('始终都会执行');
  });
}
