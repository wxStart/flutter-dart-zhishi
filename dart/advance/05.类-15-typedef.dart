typedef MathOption(int a, int b);

// 加法运算
add(int a, int b) {}

// 减法
sub(int a, int b) {}

add1(int a, int b, int c) {}

void main() {
  print(add is MathOption); // true
  print(sub is MathOption); // true
  print(add1 is MathOption); // false

  print(add is Function); // true
  print(sub is Function); // true
  print(add1 is Function); // true

  MathOption op = add;
  op(1, 2);
}
