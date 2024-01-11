void main(List<String> args) {
  // 地板除  向下取整
  print(7 ~/ 4); // 1

  // is
  List list = [];

  if (list is! List) {
    print('不是List');
  } else {
    print('是List'); //是List
  }

  // 避空运算符  如果不是空（null）返回前面， 是空返回后面，
  print(1 ?? 3); // 1
  var a;
  print(a ?? 3); // 3
  print(false ?? 3); // false

  var b;
  b ??= 12; // 只有b位空（null的时候才赋值）
  print(b); // 12
  b ??= 6; // 只有b位空（null的时候才赋值）
  print(b); // 12

  // 条件属性运算符 ?.  存在才访问

  Map m = {};
  print(m.length);
  var c;
  print(c?.length);

  // 级联运算符  链式操作
  Set s1 = {};
  s1
    ..add(1) // 这里执行返回 s1
    ..add(2);
}
