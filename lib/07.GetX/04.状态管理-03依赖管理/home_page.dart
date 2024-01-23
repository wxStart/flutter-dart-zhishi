import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './controllers/counter.dart';
import './controllers/list.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
// 获取计数器实例
  CounterController counterController = Get.find<CounterController>();
  ListController listController = Get.find<ListController>();
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
            child: const Text('加2'),
          ),
          ElevatedButton(
            onPressed: () {
              counterController.sub(2);
            },
            child: const Text('-2'),
          ),
          ElevatedButton(
            onPressed: () {
              listController.add(listController.lists.last + 2);
            },
            child: const Text('拿到最后一个数+2 并放入list中'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/other', arguments: {"id": 123});
            },
            child: const Text('去其他页面'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/count');
            },
            child: const Text('去count页面'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/route_binding');
            },
            child: const Text('进入页面加载控制器'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/route_binding1');
            },
            child: const Text('测试生命周期可以飞 GetView'),
          ),
          DeomState(),
        ],
      ),
    );
  }
}

class DeomState extends StatefulWidget {
  const DeomState({super.key});

  @override
  State<DeomState> createState() => _DeomStateState();
}

class _DeomStateState extends State<DeomState> {
  int _count = 1;

  @override
  Widget build(BuildContext context) {
    print("DeomStatebuild");
    return Container(
      child: Row(
        children: [
          Text("$_count"),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _count++;
                });
              },
              child: Text('增加'))
        ],
      ),
    );
  }
}
