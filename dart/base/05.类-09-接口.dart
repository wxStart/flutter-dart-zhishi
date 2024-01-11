// 抽象类，约定类应该实现的一些方法
abstract class Person {
  late String name;

  // 抽象方法
  void say();
  //普通方法
  // void info() {
  //   print('Person info');
  // }
}

abstract class Person1 {
  late List lists;
  // 抽象方法
  void sayName();
  //普通方法
  void info() {
    print('Person1 info');
  }
}

// class 约定了两个接口，所以要实现约定类里面的所有属性和方法
class Men implements Person, Person1 {
  @override
  String name = 'Men';

  @override
  void say() {
    print('我会说话');
  }

  @override
  void sayName() {
    print('我会说话 sayName');
  }

  @override
  void info() {}

  @override
  List lists = [1, 2, 3];
}

void main(List<String> args) {
  // 实例化
  Men m = new Men();
  m.say();
  m.info();
}
