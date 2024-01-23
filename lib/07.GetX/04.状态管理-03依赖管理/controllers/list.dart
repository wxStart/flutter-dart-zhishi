import 'package:get/get.dart';

class ListController extends GetxController {
  RxList<int> lists = [1, 2, 3].obs;

  void add(int number) {
    lists.add(number);
    update(); // 必须写 这里是通知更新
  }
}
