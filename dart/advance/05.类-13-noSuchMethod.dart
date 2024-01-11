class Person {
  @override
  noSuchMethod(Invocation invocation) {
    print('调用到了未定义的方法 $invocation');
    return super.noSuchMethod(invocation);
  }
}

void main() {
  dynamic p = new Person();
  p.noSuchMethod1();
}
