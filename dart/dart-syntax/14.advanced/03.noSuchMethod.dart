class Phone {
  Phone() {
    print('构造函数');
  }

  say(){
    print('say ....');
  }

  // 调用不存在的方法的时候呀会被调用
  @override
  noSuchMethod(Invocation invocation) {
    print('未定义的方法被调用了');
    // TODO: implement noSuchMethod
    // return super.noSuchMethod(invocation);
  }
}

// 把类当函数使用

void main() {
  dynamic p = Phone();
  p.say();
  p.say1();
}
