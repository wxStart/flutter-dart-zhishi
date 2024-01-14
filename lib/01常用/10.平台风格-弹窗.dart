import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class MaterialDemo extends StatelessWidget {
  const MaterialDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        title: Text('提示'),
        content: Text('安卓弹框内容信息'),
        actions: [TextButton(onPressed: () {}, child: Text('取消'))],
      ),
    );
  }
}

class CupertinoDemo extends StatelessWidget {
  const CupertinoDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const CupertinoAlertDialog(
          title: Text('提示'),
          content: Text('ios风格弹框内容信息'),
          actions: [
            CupertinoDialogAction(child: Text('取消')),
            CupertinoDialogAction(
                child: Text('确认', style: TextStyle(color: Colors.blue)))
          ]),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      // 判断是ios
      print('ios');
    }
    if (Platform.isAndroid) {
      // 判断是安卓
      print('isAndroid');
    }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('平台风格'),
        ),
        body: const Column(
          children: [
            // 安卓
            MaterialDemo(),

            // ios

            CupertinoDemo()
          ],
        ),
      ),
    );
  }
}
