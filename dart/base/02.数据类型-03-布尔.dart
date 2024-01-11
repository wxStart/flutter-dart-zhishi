void main() {
  // 声明布尔值
  bool flag1 = true;
  print(flag1);

  if (flag1) {
    print('flag1 是真值');
  }

  var a;
  if (a != null) {
    print('a的值不是null');
  } else {
    print('a的值是null');
  }

  var b = 0 / 0;
  print(b);
  print(b.isNaN); // true
}
