void main() {
  // Dart中声明函数不需要 function 关键字， 但是有返回类型
  num nFun(int n) {
    return n * n;
  }

  print(nFun(2)); // 4

  // 匿名函数

  var afun = (int n) {
    return n * n;
  };
  print(afun(4)); // 16

  // 箭头函数，箭头函数只是函数的一种简写
  var afun2 = (int n) => n * n;
  print(afun2(6)); // 36

  // 立即执行函数
  (int n) {
    print(n); // 9
  }(9);

  // 必填参数
  String userInfo(String name) {
    return "你好，$name";
  }

  print(userInfo('法外狂徒'));

  // 可选参数
  String userInfo1(String name, [int? age]) {
    return "你好，$name, 年龄：$age ";
  }

  print(userInfo1('法外狂徒'));
  print(userInfo1('法外狂徒', 50));
  // 命名参数
  String userInfo2({String name = '默认名字', int? age}) {
    return "你好，$name, 年龄：$age ";
  }
  print(userInfo2());
  print(userInfo2(name: '法外狂徒', age: 50));

  
  // 函数参数 函数作为参数

  // 作用域
  var a = 1, b = 123;
  var fn = () {
    var a = 12;
    print('a： $a'); // 使用的是局部作用域的变量a;
    print('b： $b'); // 使用的是main函数中的变量b;
  };
  fn();

  // 闭包, 函数作用域没被释放，和js一样
  var closure = (() {
    var a = 1;
    return () => ++a;
  })();
  print(closure()); // 2
  print(closure()); // 3
}
