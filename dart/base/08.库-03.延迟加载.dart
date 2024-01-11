import './08.库/08-01_my_ku.dart' deferred as fun;

loadFun() async {
  print('2 开始加载了');
  await fun.loadLibrary();
  print('4加载完成了');
  fun.f1();
}

void main(s) {
  print(1);
  loadFun();
  print(3);
}
