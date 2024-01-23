import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './controllers/counter.dart';

//! 只有一个conctroller 时候就可以使用 GetView
//! 然后访问 controller 就可以拿到控制器
class CountPage extends GetView<CounterController> {
  @override
  Widget build(BuildContext context) {
    print("CountPage build");
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('GetX-依赖管理-Home'),
      ),
      body: Column(
        children: [
          const Text('GetX-依赖管理-Home'),
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
