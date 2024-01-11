//  实例当做方法调用
class Person {
  String name = "人类";
  call() {
    return name;
  }
}

void main(List<String> args) {
  Person p = new Person();
  print(p()); // 把实例当方法就会调用 call方法

  print(Person()());
}
