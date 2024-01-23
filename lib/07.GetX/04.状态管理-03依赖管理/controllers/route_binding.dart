import 'package:get/get.dart';

class RouterCounterController extends GetxController {
  @override
  void onInit() {
    // 请求接口数据
    print('控制器 onInit');
    count.value = 1;
    super.onInit();
  }

  @override
  void onReady() {
    print('控制器 onReady');
    super.onReady();
  }

  @override
  void onClose() {
    print('控制器 onClose');
    // RouterCounterController.instance = null;
    super.onClose();
  }

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
