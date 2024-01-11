import 'dart:async';

void main(List<String> args) {
  Future.forEach([1, 2, 3], (element) {
    return Future.delayed(Duration(seconds: element), () {
      print(element);
      return element.toString() + '111';
    }).then((value) => value);
  }).then((value) {
    print('结束了 ');
  });
}
