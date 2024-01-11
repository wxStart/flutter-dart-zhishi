// 同步生成器

Iterable getNumer(int n) sync* {
  int i = 0;
  while (i < n) {
    yield i++;
  }
}

void main(List<String> args) {
  // 同步生成器示例  开始//
  var res = getNumer(5).iterator;
  print('start');
  while (res.moveNext()) {
    print(res.current);
  }
  print('end');

  // print(res.moveNext()); //true
  // print(res.current); // 0

  // print(res.moveNext()); // true
  // print(res.current); // 1

  // print(res.moveNext()); // true
  // print(res.current); // 2
  // print(res.moveNext()); // true
  // print(res.current); // 3
  // print(res.moveNext()); // true
  // print(res.current); // 4

  // print(res.moveNext()); // false
  // print(res.current); // null
  // print(res.moveNext()); // false
  // print(res.current); // null

  // 同步生成器示例  结束//
}
