import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './off_page.dart';
import './home_page.dart';

class OtherPage extends StatelessWidget {
  OtherPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    dynamic arguments = Get.arguments;

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
              Get.toNamed(
                '/other',
                arguments: {"id": arguments['id'] + 100},
                preventDuplicates: false,
              );
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
                '/home',
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
              Get.offAllNamed('/home');
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
