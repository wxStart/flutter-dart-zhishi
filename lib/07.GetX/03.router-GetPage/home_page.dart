import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('GetX-路由-Home'),
      ),
      body: Column(
        children: [
          const Text('GetX-路由-Home'),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/other', arguments: {"id": 123});
            },
            child: Text('去其他页面'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/query?id=123&abc=1234');
            },
            child: Text('url传值'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/other111');
            },
            child: Text('404'),
          ),
        ],
      ),
    );
  }
}
