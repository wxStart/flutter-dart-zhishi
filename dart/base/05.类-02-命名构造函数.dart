// Person1的简写
class Person {
  late String name;
  late int age;
  Person(this.name, this.age);

  void printName() {
    print('我的名字是 ${name}');
    print('我的名字是 ${this.name}');
  }

  Person.origin(String n, int a) {
    name = n;
    age = a;
  }
}

void main(List<String> args) {
  // 实例化
  Person p1 = new Person('李四', 20);
  print(p1.name);
  p1.printName();

  Person p2 = new Person.origin('张三', 21);
  print(p2.name);
  p2.printName();
}
