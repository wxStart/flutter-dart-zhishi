import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './home_page.dart';
import './controllers/counter.dart';
import './controllers/list.dart';

class OtherPage extends StatelessWidget {
  OtherPage({
    super.key,
  });
  // 获取计数器实例
  final CounterController counterController = Get.find<CounterController>();
  final ListController listController = Get.find<ListController>();
  @override
  Widget build(BuildContext context) {
    dynamic arguments = Get.arguments;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('GetX-依赖管理-other'),
      ),
      body: Column(
        children: [
          const Text('GetX-依赖管理-other'),
          Text('arguments-id： ${arguments['id']}'),
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
              counterController.add(1);
            },
            child: Text('加1'),
          ),
          ElevatedButton(
            onPressed: () {
              counterController.sub(1);
            },
            child: Text('-1'),
          ),
          ElevatedButton(
            onPressed: () {
              listController.add(listController.lists.last + 2);
            },
            child: Text('拿到最后一个数+2 并放入list中'),
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
              Get.offAll(HomePage());
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
