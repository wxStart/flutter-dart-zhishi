import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './04.状态管理-03依赖管理/router.dart';
import './04.状态管理-03依赖管理/binding/all_controller.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/home',
      initialBinding: AllControllerBinding(), // 全局绑定 控制器
      getPages: RouterPage.routes,
    );
  }
}
