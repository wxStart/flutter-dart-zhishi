// Person的简写
class Person {
  String name;
  int age;
  Person(this.name, this.age);
}

// 常量构造函数声明变量
//! 构造函数前面加上 const
class ImmutablePerson {
  final String name;
  final int age;
  const ImmutablePerson(this.name, this.age);
}

void main(List<String> args) {
  // 实例化
  Person p1 = new Person('李四', 20);
  Person p2 = new Person('李四', 20);

  print(p1 == p2); // false

  ImmutablePerson ip1 = new ImmutablePerson('李四', 20);
  ImmutablePerson ip2 = new ImmutablePerson('李四', 20);
  print(ip1 == ip2); // false

  //! 使用 const 去执行的时候 两个对象就是同一个对象，在flutter中进行大量使用做优化的
  ImmutablePerson ip3 = const ImmutablePerson('李四', 20);
  ImmutablePerson ip4 = const ImmutablePerson('李四', 20);
  print(ip3 == ip4); // true
}
