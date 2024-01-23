import 'package:flutter/material.dart';
import 'package:flutter_application_1/07.GetX/02.router-onGenerateRoute/home_page.dart';
import 'package:get/get.dart';
import './off_page.dart';

class OtherPage extends StatelessWidget {
  dynamic arguments;

  OtherPage({super.key, this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('GetX-路由-other'),
      ),
      body: Column(
        children: [
          const Text('GetX-路由-other'),
          Text('arguments-id： ${arguments['id']}'),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/other', arguments: {"id": arguments['id'] + 100});
            },
            child: const Text('去其他页面'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.off(() => const OffPage());
            },
            child: const Text('off  OffPage, 有点类似reaplase'),
          ),
          ElevatedButton(
            onPressed: () {
              // 尝试代码
              // Navigator.of(context).pushNamedAndRemoveUntil(
              //     '/other', (route) => false,
              //     arguments: {'id': 100});
              Navigator.of(context).pushNamedAndRemoveUntil(
                '/',
                (route) => false,
              );
            },
            child: const Text('flutter返回跟页面'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.offAll(const HomePage());
              // Get.offAllNamed('/');
            },
            child: const Text('offAll返回跟页面'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.offAllNamed('/');
            },
            child: const Text('offAllNamed返回跟页面'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text('返回'),
          )
        ],
      ),
    );
  }
}
