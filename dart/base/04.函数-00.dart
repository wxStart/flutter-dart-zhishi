void main(List<String> args) {
  add(a, b) {
    return a + b;
  }

  print(add(1, 2)); // 3

  // 匿名函数
  var sum = (a, b) {
    return a + b;
  };

  print(sum(1, 2)); // 3

  // 箭头函数
  var sum2 = (a, b) => a + b;
  print(sum2(1, 2)); // 3

  // 立即执行函数
  ((int n) {
    print(n);
  })(10);
}
