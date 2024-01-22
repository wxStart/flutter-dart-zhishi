import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  @observable
  int count = 0;

  @action
  void add([int step = 1]) {
    count += step;
  }

  @action
  void sub() {
    count--;
  }
}
