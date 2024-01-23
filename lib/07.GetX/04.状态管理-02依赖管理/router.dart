import 'package:get/get.dart';
import 'home_page.dart';
import 'other_page.dart';

class RouterPage {
  static List<GetPage> routes = [
    GetPage(
      name: '/home', // 不可以用 ‘/’ 会导致404失效(以/开头的路由)
      page: () => HomePage(),
    ),
    GetPage(
      name: '/other',
      page: () => OtherPage(),
      transition: Transition.rightToLeft,
    ),
  ];
}
