// 部分引入
import './08.库/08-01_my_ku.dart' show f1, f2;

// 等价上方的 show
// import './08.库/08-01_my_ku.dart' hide f3;
void main(List<String> args) {
  // f3(); 报错

  f1();
}
