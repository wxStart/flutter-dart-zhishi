class Person {}

class P1 extends Person {}

// 限制 泛型的类型 ， 父类和子类都可以
class MySet<T extends Person> {
  Set<T> s = new Set();

  add(T value) {
    s.add(value);
  }
}

void main() {
  var intS = new MySet<Person>();

  intS.add(new Person());
  intS.add(new P1());
}
