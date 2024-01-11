import 'dart:async';

void main(List<String> args) {
  // 返回最快的结果
  Future.any([
    Future.delayed(Duration(seconds: 4)).then((value) => 4),
    Future.delayed(Duration(seconds: 2)).then((value) => 2),
    Future.delayed(Duration(seconds: 3)).then((value) => 3)
  ]).then((value) {
    print(value); // 2  最快是2秒
  });
}
