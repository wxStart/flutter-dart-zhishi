import 'package:flutter/material.dart';

class ShareDataWidget extends InheritedWidget {
  final dynamic data;

  final Widget child;
  const ShareDataWidget({super.key, required this.child, required this.data})
      : super(child: child);

  static ShareDataWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
  }

  // 通知组件更新
  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    return true;
  }
}

// 提供数据的组件
class ProviderDataWidget extends StatefulWidget {
  const ProviderDataWidget({super.key});

  @override
  State<ProviderDataWidget> createState() => _ProviderDataWidgetState();
}

class _ProviderDataWidgetState extends State<ProviderDataWidget> {
  int count = 0;

  @override
  void initState() {
    super.initState();
  }

  add() {
    setState(() {
      count++;
    });
  }

  sub() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ShareDataWidget(
      data: {
        'count': count,
        "add": add,
        "sub": sub,
      },
      child: const InjectChildWidget(),
    );
  }
}

// 使用数据的组件
class InjectChildWidget extends StatelessWidget {
  const InjectChildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic data = ShareDataWidget.of(context)!.data;
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text('子组件一 :${data['count']}'),
              IconButton(
                onPressed: () {
                  data['add']();
                },
                icon: const Icon(
                  Icons.add,
                  size: 20,
                ),
              ),
              IconButton(
                onPressed: () {
                  data['sub']();
                },
                icon: const Icon(
                  Icons.remove,
                  size: 20,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text('子组件二 :${data['count']}'),
              IconButton(
                onPressed: () {
                  data['add']();
                },
                icon: const Icon(
                  Icons.add,
                  size: 20,
                ),
              ),
              IconButton(
                onPressed: () {
                  data['sub']();
                },
                icon: const Icon(
                  Icons.remove,
                  size: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('数据共享 - InheritedWidget'),
        ),
        body: ProviderDataWidget(),
      ),
    );
  }
}
