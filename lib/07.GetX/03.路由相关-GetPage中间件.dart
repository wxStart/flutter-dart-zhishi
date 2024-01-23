import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './03.router-GetPage/03.router.dart';
import './03.router-GetPage/404_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      unknownRoute: GetPage(
        name: '/notfound',
        page: () => const NotFound(),
      ),
      initialRoute: '/home',
      getPages: RoutrPage.routes,
    );
  }
}
