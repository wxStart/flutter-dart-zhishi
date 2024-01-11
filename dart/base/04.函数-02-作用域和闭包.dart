void main(List<String> args) {
  // 作用域
  var globalNumer = 10;
  void myFn(n) {
    print(n);
    print(globalNumer);
  }

  myFn(100);

  // 闭包
  parent() {
    int money = 100;

    return (int a) {
      money += a;
      print(money);
    };
  }

  var save = parent();
  save(10); // 110
  save(100); // 210
}
