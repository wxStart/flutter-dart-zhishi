import './class-lib/05-05.siyou.dart';

void main(List<String> args) {
  // 实例化

  Person p = new Person('李四');
  // p._sname;  私有属性访问不到
  print(p.getSname());
}
