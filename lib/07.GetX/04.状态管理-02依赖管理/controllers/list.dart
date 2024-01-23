import 'package:get/get.dart';

class ListController extends GetxController {
  RxList<int> lists = [1, 2, 3].obs;

  void add(int number) {
    lists.add(number);
  }

  // 利用单例模式
  static ListController? instance;
  factory ListController() {
    ListController.instance ??= ListController.newSelf();
    return ListController.instance!;
  }
  ListController.newSelf();
}
