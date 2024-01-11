import '13.zdy_library.dart';
import 'dart:math';
import 'dart:core'; // 会被默认引入

import '13.showOrHide.dart' show f1, f3;
import '13.showOrHide1.dart' as showOrHide1; // 解决命名冲突的问题

void main() {
  MyZDY my = MyZDY();
  print(my);
  print(MyZDY.version);
  print(pi); // dart:math 中的pi

  f1();
  // f2(); 按show 的时候  f2不引入
  f3();

  showOrHide1.f1();
}
