import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  2. 注入
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: const Text('Provider'),
          ),
          body: const Column(
            children: [ChildWidget()],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => context.read<Counter>().add(),
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}

// 1. 创建数据模型
class Counter extends ChangeNotifier {
  int _counter = 1;
  int get counter => _counter;

  add() {
    _counter++;
    // 通知 ui更新
    notifyListeners();
  }
}

// 3. ui使用
class ChildWidget extends StatelessWidget {
  const ChildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text('${context.watch<Counter>().counter}'),
          ElevatedButton(
            onPressed: () {
              context.read<Counter>().add();
            },
            child: const Text('增加'),
          )
        ],
      ),
    );
  }
}
