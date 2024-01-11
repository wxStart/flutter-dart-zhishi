/// hashCode 是对象的唯一标识
/// hashCode 是一串数字
/// dart 中的每一个对象都有hashCode
///  可以利用haseCode判断两个对象是否相等

class Phone {}

// 单例
class PersonF {
  late String name;
  static var instance = null;
  factory PersonF(String name) {
    // 工厂构造函数不能使用 this
    if (PersonF.instance == null) {
      PersonF.instance = new PersonF._newSelf(name);
    }
    return PersonF.instance;
  }
  PersonF._newSelf(this.name);
}

// 把类当函数使用

void main() {
  var p1 = Phone();
  var p2 = Phone();
  print(p1.hashCode);
  print(p2.hashCode);

  var p3 = PersonF('张三');
  var p4 = PersonF('李四');

  print(p3.hashCode);
  print(p4.hashCode);
  print(p3 == p4);
}
