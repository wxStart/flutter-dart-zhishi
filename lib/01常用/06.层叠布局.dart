import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      textDirection: TextDirection.ltr,
      children: [
        Container(
          width: 300,
          height: 300,
          color: Colors.red,
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.blue,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.green,
        ),
        Positioned(
          top: 50,
          right: 20,
          child: Container(
            width: 50,
            height: 50,
            color: Colors.yellow,
            child: const Text('定位'),
          ),
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  List<String> _shu = ['刘备', '张飞', '关羽', '马超', '姜维', '诸葛亮'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('层叠布局 Stack'),
        ),
        body: StackDemo(),
      ),
    );
  }
}
