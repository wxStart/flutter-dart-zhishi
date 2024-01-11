enum Color {
  red,
  green,
  blue,
}

void main(List<String> args) {
  print(Color.red);
  print(Color.red.index); // 0

  // 返回枚举的常量列表
  print(Color.values); //[Color.red, Color.green, Color.blue]
}
