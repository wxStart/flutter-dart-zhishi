import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OffPage extends StatelessWidget {
  const OffPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('GetX-路由-OffPage'),
      ),
      body: Column(
        children: [
          const Text('GetX-路由-OffPage'),
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text('返回'),
          ),
        ],
      ),
    );
  }
}
