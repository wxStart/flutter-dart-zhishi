// 异步生成器

Stream<int> asyncNumer(int n) async* {
  int i = 0;
  while (i < n) {
    yield i++;
  }
}

void main(List<String> args) {
  print('start');

  Stream<int> res = asyncNumer(5);

  res.listen((event) {
    print(event);
  }).onDone(() {
    print('输出完成了');
  });

  print('end');
}
