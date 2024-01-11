// 扩展内置类
extension StringExtension on String {
  //
  parseInt() {
    return int.parse(this);
  }
}

// 扩展自定义类

class Person {
  say() {
    print('say ...');
  }
}

extension PersonExtension on Person {
 run(){
  print('run ....');
 }
}

void main() {
  String number = '30';
  print(number.parseInt() == 30);

  Person p = Person();
  p.say();
  p.run();
}
