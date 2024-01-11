import 'dart:async';

void main(List<String> args) {
  // 等所有的都执行完毕返回结果
  Future.wait([
    Future.delayed(Duration(seconds: 4)).then((value) => 4),
    Future.delayed(Duration(seconds: 2)).then((value) => 2),
    Future.delayed(Duration(seconds: 3)).then((value) => 3)
  ]).then((value) {
    print(value); //[4,2,3]
  });
}
