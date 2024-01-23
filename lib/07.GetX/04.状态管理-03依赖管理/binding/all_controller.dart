import 'package:get/get.dart';
import '../controllers/counter.dart';
import '../controllers/list.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CounterController());
    Get.put(ListController());
    // 不适合用懒加载，会出现直接跳转根路径 然后再次进入时候找不到控制器
    // Get.lazyPut<CounterController>(() => CounterController());
    // Get.lazyPut<ListController>(() => ListController());
  }
}
