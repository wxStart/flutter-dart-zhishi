import 'package:get/get.dart';

class RouterCounterController extends GetxController {
  RxInt count = 0.obs;
  void add([int step = 1]) {
    count.value += step;
    update(); // 必须写 这里是通知更新
  }

  void sub([int step = 1]) {
    count.value -= step;
    update(); // 必须写 这里是通知更新
  }

  // 利用单例模式 保持数据持久化
  factory RouterCounterController() {
    RouterCounterController.instance ??= RouterCounterController.newSelf();
    return RouterCounterController.instance!;
  }
  static RouterCounterController? instance;
  RouterCounterController.newSelf();
}
