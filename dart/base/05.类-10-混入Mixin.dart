// 类作为混入
// 此时类只能继承Object，不能继承其他类
// 作为混入使用，不能有构造函数

class P {}

// mixin class Person extends P {

// mixin class Person {
mixin class Person extends Object {
  String name = "Person";

  void info() {
    print('Person info');
  }

  void info1() {
    print('Person info');
  }
}

mixin Person1 {
  String name = "Person1";

  // 抽象方法
  void sayName();

  void info() {
    print('Person1 info');
  }
}

// 通过with关键字进行混入
// 后引入的混入会覆盖前一个混入的同名方法或者属性
class Men with Person, Person1 {
  @override
  void sayName() {}
}

void main(List<String> args) {
  // 实例化
  Men m = new Men();
  print(m.name); // Person1
  m.info();
  m.info1();
}
