import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './controllers/counter.dart';
import './controllers/list.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  CounterController counterController = Get.put(CounterController());
  ListController listController = Get.put(ListController());
  @override
  Widget build(BuildContext context) {
    print('home build');
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
              "count : ${counterController.count}",
              style: const TextStyle(color: Colors.red, fontSize: 32),
            ),
          ),
          Obx(
            () => Text(
              "lists.toString() : ${listController.lists.toString()}",
              style: const TextStyle(color: Colors.red, fontSize: 32),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              counterController.add(2);
            },
            child: Text('加2'),
          ),
          ElevatedButton(
            onPressed: () {
              counterController.sub(2);
            },
            child: Text('-2'),
          ),
          ElevatedButton(
            onPressed: () {
              listController.add(listController.lists.last + 2);
            },
            child: Text('拿到最后一个数+2 并放入list中'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/other', arguments: {"id": 123});
            },
            child: Text('去其他页面'),
          ),
        ],
      ),
    );
  }
}
