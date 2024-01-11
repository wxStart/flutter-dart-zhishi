void main() {
  /// Dart中声明数字有三个关键字
  /// num
  /// int
  /// do
  int n1 = 1;
  num n2 = 1;
  print(n2);
  // n1 = 3.1; 报错
  n2 = 3.1;

  double n3 = 1; //1.0
  print(n3);

  n3 = 1.1;

  print(n1);
  print(n2);
  print(n3);


  print(n1.toString());
  print(3.7.toInt()); //3, x下取整

  // 四舍五入
  print(3.1415926.round()); // 3
  print(3.1415926.toStringAsFixed(4));//3.1416

  // 返回余数
  print(10.remainder(4)); // 2

  //数字比较：0代表相同，1代表大于，-1代表小于；
  print(10.compareTo(12)); // -1

  //返回最大公约数
  print(12.gcd(18));

  //科学计数法
  print(1000.toStringAsExponential(2)); //保留两位小数的科学计数法

}
