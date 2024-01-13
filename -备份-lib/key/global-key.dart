import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  GlobalKey<_MyWidgetState> _globalKey = GlobalKey();

  Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('global key  类似vue中的ref 方便访问子组件'),
      ),
      body: MyWidget(
        key: _globalKey,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _globalKey.currentState!.setState(() {
            _globalKey.currentState!._count++;
            _globalKey.currentState!.data += 'SSS-';
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _count = 0;
  String data = '12';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("count : $_count"),
          Text("data : $data"),
        ],
      ),
    );
  }
}
