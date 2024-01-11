class Person {
  String name;
  String get getName {
    return this.name;
  }

// 给改属性赋值的时候会执行
  void set getName(String val) {
    print('在给getName 赋值 ：$val');
    this.name = val;
  }

  Person(this.name);
}

void main(List<String> args) {
  // 实例化
  Person p = new Person('李四');
  print(p.getName);
  p.getName = '张三';
  print(p.getName);
}
