import 'dart:async';

void main(List<String> args) {
  int i = 0;

  Future.doWhile(() {
    i++;

    return Future.delayed(Duration(seconds: 2), () {
      print("i $i");
      return i < 6; // 返回执行条件
    }).then((value) {
      return value;
    });
  }).then((value) {
    print(' do while  then');
  });
}
