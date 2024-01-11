void main() {
  // 声明整型
  int int1 = 12;

  // 声明浮点数
  double dou1 = 2.3;

  // 声明数值类型
  num num1 = 1;
  num1 = 1.1;

  // 类型转换

  // 数字转字符串
  print(10.toString());

  // 转整数，向下取整
  print(2.8.toInt()); //2
  // 四舍五入
  print(3.1415926.round()); //3
  // 保留小数点后四位，四舍五入
  print(3.1415926.toStringAsFixed(4)); //3.1416

  // 返回余数
  print(10.remainder(4)); // 2

  // 数字比较： 相同返回0， 前面大于后面返回1， 小于返回-1
  print(10.compareTo(10)); // 0
  print(10.compareTo(8.1)); // 1
  print(10.compareTo(10.1)); // -1

  //返回最大公约数
  print(12.gcd(18)); // 6

  //  返回科学技术
  print(1200.toStringAsExponential(2)); // 1.20e+3
  print(1200.toStringAsExponential(1)); // 1.2e+3
  print(1200.toStringAsExponential(0)); // 1e+3
}
