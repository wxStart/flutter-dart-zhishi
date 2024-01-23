import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '02.router-onGenerateRoute/02.router.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.rightToLeftWithFade,
      onGenerateRoute: onGenerateRoute,
    );
  }
}

class Demo extends StatelessWidget {
  const Demo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('GetX - 路由'),
      ),
      body: Column(
        children: [Text('GetX模版')],
      ),
    );
  }
}
