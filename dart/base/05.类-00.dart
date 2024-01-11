class Person {
  String name = '张三';
  void printName() {
    print('我的名字是 ${name}');
    print('我的名字是 ${this.name}');
  }
}

void main(List<String> args) {
  // 实例化
  Person p1 = new Person();
  print(p1.name);
  p1.printName();
}
