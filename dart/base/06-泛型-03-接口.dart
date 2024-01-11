abstract class MySet<T> {
  Set<T> s = new Set();
  add(T value);
}

// 类的泛型会传给接口
class MySet1<T> implements MySet<T> {
  @override
  Set<T> s = new Set<T>();

  @override
  add(T value) {
    s.add(value);
  }
}

void main() {
  var intS = new MySet1<int>();
  intS.add(10);
  // intS.add('ss') // 报错

  var stingS = new MySet1<String>();
  stingS.add("123");
  // stingS.add(123);
  print(stingS.s);
}
