class Person {
  late String name;
  late int age;
  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }
  void printName() {
    print('我的名字是 ${name}');
    print('我的名字是 ${this.name}');
  }
}

// Person1的简写
class Person1 {
  late String name;
  late int age;
  Person1(this.name, this.age);

  void printName() {
    print('我的名字是 ${name}');
    print('我的名字是 ${this.name}');
  }
}

void main(List<String> args) {
  // 实例化
  Person p1 = new Person('李四', 20);
  print(p1.name);
  p1.printName();

  Person1 p2 = new Person1('李四', 20);
}
