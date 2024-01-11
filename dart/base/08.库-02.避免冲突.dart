// 两个文件里面的命名有冲突

import './08.库/08-01_my_ku.dart' as f;
import './08.库/08-01_my_ku1.dart' as g;

void main(List<String> args) {
  f.f1();
  g.f1();
}
