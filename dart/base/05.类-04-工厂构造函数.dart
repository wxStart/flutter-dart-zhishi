// Person的简写
class Person {
  String name;
  Person(this.name);
}

// 工厂构造函数声明变量
//! 构造函数前面加上 factory
//! 工厂函数中不能使用 this
//! factory 的返回结果会作为实例对象
class Factoryerson {
  late String name;

  static Factoryerson? instance;
  factory Factoryerson([String name = 'name']) {
    // ! 注释了单例模式
    if (Factoryerson.instance == null) {
      Factoryerson.instance = new Factoryerson.newSelf(name);
    }

    return Factoryerson.instance!;
    // return new Factoryerson.newSelf(name);
  }
  Factoryerson.newSelf(this.name) {}
}

void main(List<String> args) {
  // 实例化
  Factoryerson p1 = new Factoryerson('李四');
  print(p1.name); // 李四
  Factoryerson p2 = new Factoryerson('张三');
  print(p2.name); // 李四
  print(p1 == p2); //true
}
