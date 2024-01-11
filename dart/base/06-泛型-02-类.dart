class MySet<T> {
  Set<T> s = new Set();

  add(T value) {
    s.add(value);
  }
}

void main() {
  var intS = new MySet<int>();
  intS.add(10);
  // intS.add('ss') // 报错

  var stingS = new MySet<String>();
  stingS.add("123");
  // stingS.add(123);
  print(stingS.s);
}
