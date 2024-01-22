import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: Demo(),
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
        title: const Text('GetX'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              _showDefaultDialog(context);
            },
            child: const Text('flutter自带的Dialog'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.defaultDialog(
                title: '提示',
                middleText: '确认要删除这条信息么？确认要删除这条信息么？确认要删除这条信息么？',
                confirm: TextButton(
                  onPressed: () {
                    print('确定');
                    Get.back();
                  },
                  child: const Text('删除'),
                ),
                cancel: TextButton(
                  onPressed: () {
                    print('取消');
                    Get.back();
                  },
                  child: const Text('取消'),
                ),
              );
            },
            child: const Text('GetX的Dialog'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.snackbar('安全提示', "你的系统正在被病毒攻击！！！",
                  snackPosition: SnackPosition.BOTTOM);
            },
            child: const Text('snackbar'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.bottomSheet(Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: 350,
                  child: Column(
                    children: [
                      Text('底部弹框'),
                      Text('底部弹框'),
                      Text('底部弹框'),
                      ElevatedButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text('关闭'),
                      )
                    ],
                  )));
            },
            child: const Text('bottomSheet'),
          ),
        ],
      ),
    );
  }

  void _showDefaultDialog(BuildContext context) async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('提示'),
            content: Text('确认要删除这个信息么？'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop('取消');
                  },
                  child: Text('取消')),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop('确定');
                  },
                  child: Text('确定'))
            ],
          );
        });
    print(result);
    if (result == '确定') {
      // 开始执行确认操作
    }
  }
}
