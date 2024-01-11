typedef MpTion(int a, int b);

// 声明运算
add(int a, int b) {
  print('=:${(a + b).toString()}');
}

add3(int a, int b, int c) {
  print('=:${(a + b).toString()}');
}

void main() {
  print(add is MpTion);
  print(add is Function);
  print(add3 is MpTion); // false
}
