import 'package:flutter/material.dart';

class LifeCycle extends StatefulWidget {
  const LifeCycle({super.key});
  @override
  State<LifeCycle> createState() => _LifeCycleState();
}

class _LifeCycleState extends State<LifeCycle> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ShareData(
        data: {"count": _count},
        child: Column(
          children: [
            Text("$_count"),
            ElevatedButton(
              onPressed: () {
                _count = _count + 1;
                setState(() {});
              },
              child: const Icon(Icons.add),
            ),
            const Test1(),
          ],
        ),
      ),
    );
  }
}

// 子组件
class Test1 extends StatefulWidget {
  const Test1({super.key});

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  @override
  void didChangeDependencies() {
    print('依赖改变了');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    int count = ShareData.of(context).data['count'];
    return Text("Test1 子组件的共享数据： $count");
  }
}

// 数据共享类
class ShareData extends InheritedWidget {
  dynamic data;

  ShareData({required this.data, required Widget child}) : super(child: child);
  // 定义一个方法，方便子组件中获取共享数据

  static ShareData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ShareData>()!;
  }

  @override
  bool updateShouldNotify(ShareData oldWidget) {
    // print('oldWidget,${oldWidget.data}');
    return oldWidget.data != data;
  }
}
