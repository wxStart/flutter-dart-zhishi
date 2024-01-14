import 'package:flutter/material.dart';

List<Widget> createLists(List<String> lists, String type) {
  List<Widget> result = [];
  result = lists.map<Widget>((el) {
    return Chip(
      avatar: CircleAvatar(
        backgroundColor: Colors.red,
        child: Text(type),
      ),
      label: Text(el),
    );
  }).toList();
  return result;
}

class WrapDemo extends StatelessWidget {
  final List<String> _shu = [
    '夏侯惇',
    '许褚',
    '张辽',
    '徐晃',
    '曹仁',
    '夏侯渊',
    '夏侯惇',
    '许褚',
    '张辽',
    '徐晃',
    '曹仁',
    '夏侯渊',
    '曹仁',
  ];
  WrapDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      alignment: WrapAlignment.start,
      runSpacing: 5,
      // runAlignment: WrapAlignment.start,
      children: createLists(_shu, '魏'),
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
          title: const Text('流式布局 Wrap'),
        ),
        body: Column(
          children: [
            Row(
              children: createLists(_shu, '蜀'),
            ),
            WrapDemo()
          ],
        ),
      ),
    );
  }
}
