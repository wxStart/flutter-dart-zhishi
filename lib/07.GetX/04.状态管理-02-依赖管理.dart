import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '04.状态管理-02依赖管理/router.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/home',
      getPages: RouterPage.routes,
    );
  }
}
