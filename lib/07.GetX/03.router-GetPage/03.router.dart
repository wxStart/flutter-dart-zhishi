import 'package:get/get.dart';

import 'home_page.dart';
import 'other_page.dart';
import '404_page.dart';
import 'query_search_page.dart';
import './03.middleware.dart';

class RoutrPage {
  static List<GetPage> routes = [
    GetPage(
      name: '/home', // 不可以用 ‘/’ 会导致404失效(以/开头的路由)
      page: () => const HomePage(),
    ),
    GetPage(
      name: '/other',
      page: () => OtherPage(),
      transition: Transition.rightToLeft,
      middlewares: [MyMiddleWare()],
    ),
    GetPage(name: '/query', page: () => const QuerySearch())
  ];
}
