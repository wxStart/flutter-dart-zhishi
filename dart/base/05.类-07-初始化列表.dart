// 初始化列表会在构造函数之前执行，给赋值的
class Person {
  num width;
  num height;
  String name;
  num age;

  Person(this.name, this.age)
      : width = 190,
        height = 50 {
    print(this.width);
  }
}

class Point {
  double x;
  double y;
  double z;
  Point(this.x, this.y, this.z);

  // 初始化列表的特殊用法（重定向构造函数）
  Point.t2D(double x, double y) : this(x, y, 0); // 创造二位带你
}

void main(List<String> args) {
  // 实例化
  Person p = new Person('李四', 20);
  print(p);
  Point pxy = new Point.t2D(10, 19);
  print(pxy);
}
