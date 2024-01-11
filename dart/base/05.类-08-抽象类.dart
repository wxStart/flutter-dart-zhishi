// 抽象类，约定类应该实现的一些方法
abstract class Person {
  // 抽象方法
  void say();

  //普通方法
  void info() {
    print('info');
  }
}

class Men extends Person {
  @override
  void say() {
    print('我会说话');
  }
}

void main(List<String> args) {
  // 实例化
  Men m = new Men();
  m.say();
  m.info();
}
