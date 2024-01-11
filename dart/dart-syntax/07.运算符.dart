void main() {

  /// 地板处 "~/"  ;向下取整
  var a = 7 ~/ 4;
  print(a); // 1

  ///类型判断 "is" 或者 "is!"
  var list = [];
  if (list is List) {
    print('list 是 List');
  } else {
    print('list 不是 List');
  }

  /// 避空运算符 "??" 或者 "??="
  print(1 ?? 3); // 1
  print(null ?? 3); // 3

  var a1;
  a1 ??= 12; //等于null 才会赋值成功
  a1 ??= 22;
  print(a1); // 12


  /// 条件属性访问 "?."，避免访问为null的属性
  var a2;
  // print(a2.length);  会报错
  print(a2?.length);

  /// 级联运算符  ".." 返回对象引用
  
  // s.add() 返回的是add()执行的结果
  // s..add() 返回的是s对象
  
  var s = new Set();
  s..add(1)
  ..add(2)
  ..remove(2)
  ..add(3);

  print(s); //{1,3}
}
