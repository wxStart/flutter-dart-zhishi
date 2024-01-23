import 'package:get/get.dart';
import 'count_page.dart';
import 'home_page.dart';
import 'other_page.dart';
import 'route_binding_page.dart';
import './binding/route_page_binding_controller.dart';

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
    GetPage(
      name: '/count',
      page: () => CountPage(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/route_binding',
      binding: ControllerBinding(),
      page: () => RouterCountPage(),
      transition: Transition.rightToLeft,
    ),
  ];
}
