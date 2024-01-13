import 'package:flutter/material.dart';

class OneStyleText extends StatelessWidget {
  const OneStyleText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "我是一段文本只能显示两个超出后三个点隐藏 我是一段文本只能显示两个超出后三个点隐藏我是一段文本只能显示两个超出后三个点隐藏",
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: 26,
        color: Colors.red,
        fontWeight: FontWeight.w200,
        fontStyle: FontStyle.italic,
        letterSpacing: 2,
        // overflow: TextOverflow.ellipsis,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      // textScaler: TextScaler.linear(1.5),
    );
  }
}

class MoreStyleText extends StatelessWidget {
  const MoreStyleText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      text: const TextSpan(
        text: '第一种样式',
        style: TextStyle(color: Colors.black, fontSize: 15),
        children: [
          TextSpan(
            text: '第二种样式',
            style: TextStyle(
              color: Colors.green,
              fontSize: 12,
            ),
          ),
          TextSpan(
            text: '第三种样式',
            style: TextStyle(
                color: Colors.blue,
                fontSize: 22,
                decoration: TextDecoration.lineThrough),
          ),
          TextSpan(
            text:
                '默认样式的文本内容默认样式的文本内容默认样式的文本内容默认样式的文本内容默认样式的文本内容默认样式的文本内容默认样式的文本内容默认样式的文本内容',
          )
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
          title: const Text('文本'),
        ),
        body: const Column(
          children: [
            OneStyleText(),
            MoreStyleText(),
          ],
        ),
      ),
    );
  }
}
