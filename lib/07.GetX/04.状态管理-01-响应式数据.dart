import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Demo(),
    );
  }
}

class Person {
  RxString userNmae = '张三'.obs;
  RxInt age = 20.obs;
}

class Person1 {
  String userNmae;
  int age;

  Person1(this.userNmae, this.age);
}

// ignore: must_be_immutable
class Demo extends StatelessWidget {
  final RxInt _counter = 0.obs;
  final RxList<String> _list = ['张三', '李四'].obs;

  final Rx<String> _sex = Rx<String>("男");

  var p = Person();
  var p1 = Person1('李磊', 20).obs;

  Demo({super.key});
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('GetX-状态管理-响应式'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            '下方是响应式的counter：值改变的时候只会进行局部刷新，而不会整体build',
            style: TextStyle(fontSize: 26),
          ),
          Obx(
            () => Text(
              "${_counter.value}",
              style: const TextStyle(fontSize: 32),
            ),
          ),
          Obx(() {
            return Column(
              children: _list.map((element) {
                return Text(element);
              }).toList(),
            );
          }),
          Obx(
            () => Text(
              "性别：${_sex.value}",
              style: const TextStyle(fontSize: 32),
            ),
          ),
          Obx(
            () => Text(
              "Person 实例：${p.userNmae}",
              style: const TextStyle(fontSize: 32),
            ),
          ),
          Obx(
            () => Text(
              "Person1 实例整个类响应式 ：${p1.value.userNmae}",
              style: const TextStyle(fontSize: 32),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter.value++;
          _list.addAll(["小羊羔", '二傻子']);
          _sex.value = '女';
          p.userNmae.value = "李四";

          // p1.value.userNmae = "小星星"; // 无法改变,要和下面一起配合使用
          // p1.value = p1.value; //! 需要在重新赋值才可以

          p1.value = Person1('小星星', p1.value.age); //! 这样也可以 一定是要改变value才有效
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
