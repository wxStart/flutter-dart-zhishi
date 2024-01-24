import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt count = 0.obs;
  void add([int step = 1]) {
    count.value += step;
    update(); // 必须写 这里是通知更新
  }

  void sub([int step = 1]) {
    count.value -= step;
    update(); // 必须写 这里是通知更新
  }
}

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CounterController());
  }
}
