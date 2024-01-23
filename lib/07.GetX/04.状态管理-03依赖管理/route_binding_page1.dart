import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './controllers/route_binding.dart';

//! 只有一个conctroller 时候就可以使用 GetView
//! 然后访问 controller 就可以拿到控制器
class RouterCountPage1 extends StatelessWidget {
  RouterCounterController controller = Get.find<RouterCounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('GetX-依赖管理-RouterCountPage1'),
      ),
      body: Column(
        children: [
          const Text('GetX-依赖管理-RouterCountPage1'),
          Obx(
            () => Text(
              "count : ${controller.count}",
              style: const TextStyle(color: Colors.red, fontSize: 32),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              controller.add(2);
            },
            child: const Text('加2'),
          ),
          ElevatedButton(
            onPressed: () {
              controller.sub(2);
            },
            child: const Text('-2'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text('返回'),
          ),
        ],
      ),
    );
  }
}
