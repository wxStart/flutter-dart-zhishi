// 声明了一个函数 ：
//  接受一个参数 类型是 int
//  函数的返回值是 void（没有返回值）
void printInteger(int number) {
  print("这个数字是: $number");
}

void main() {
  var number = 40;
  printInteger(number);

  // 声明数字类型
  int num1 = 10;
  double dnum1 = 20;
  // 声明字符串类型
  String name = "张三";
  // 声明类型不固定的变量  var 和 dynamic
  var defaultValue;
  print("变量默认值 $defaultValue");
  defaultValue = 1234;
  defaultValue = "1234";

  dynamic dtype = '123';
  dtype = 123;

  // 声明常量 const 和 final
  const n1 = 123;
  final n2 = 123;
}
