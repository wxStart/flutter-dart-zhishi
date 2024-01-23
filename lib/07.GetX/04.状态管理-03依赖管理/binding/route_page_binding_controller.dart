import 'package:get/get.dart';

import '../controllers/route_binding.dart';

class ControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(RouterCounterController());
    // Get.lazyPut<RouterCounterController>(() => RouterCounterController());
  }
}
