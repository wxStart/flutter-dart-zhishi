import '13.showOrHide1.dart' deferred as fun;

void main()async {
  // fun.f1();
  print(1);
  await greet();
  print(2);
}

Future greet() async{
  await fun.loadLibrary();
  print(3);
  fun.f1();
}
