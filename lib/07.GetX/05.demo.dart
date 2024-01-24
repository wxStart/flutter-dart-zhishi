import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import './05.demo.controller.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialBinding: AllControllerBinding(), // 全局绑定 控制器
      getPages: [GetPage(name: "/", page: () => Demo())],
      initialRoute: '/',
    );
  }
}

class Demo extends StatelessWidget {
  Demo({super.key});

  RxInt count = 0.obs;

  RxInt sex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('GetX模版'),
      ),
      body: Column(
        children: [
          Obx(() => Text(
                "${count.value}",
                style: TextStyle(fontSize: 30),
              )),
          Obx(
            () => Row(
              children: [
                const Text('男'),
                Radio(
                  value: 1,
                  groupValue: sex.value,
                  onChanged: (value) {
                    sex.value = value as int;
                  },
                )
              ],
            ),
          ),
          Obx(
            () => Row(
              children: [
                const Text('女'),
                Radio(
                  value: 2,
                  groupValue: sex.value,
                  onChanged: (value) {
                    sex.value = value as int;
                  },
                )
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              count.value++;
            },
            child: Text('增加'),
          ),
          ElevatedButton(
              onPressed: () {
                Get.bottomSheet(SheetDome(count: count, sex: sex));
              },
              child: Text('打开sheet'))
        ],
      ),
    );
  }
}

class SheetDome extends StatelessWidget {
  RxInt? count;
  RxInt sex;
  SheetDome({super.key, this.count, required this.sex});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() => Text(
                "${count!.value}",
                style: const TextStyle(fontSize: 30),
              )),
          Obx(
            () => Row(
              children: [
                const Text('男'),
                Radio(
                  value: 1,
                  groupValue: sex.value,
                  onChanged: (value) {
                    sex.value = value as int;
                  },
                )
              ],
            ),
          ),
          Obx(
            () => Row(
              children: [
                const Text('女'),
                Radio(
                  value: 2,
                  groupValue: sex.value,
                  onChanged: (value) {
                    sex.value = value as int;
                  },
                )
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              count!.value++;
            },
            child: const Text('增加'),
          )
        ],
      ),
    );
  }
}
