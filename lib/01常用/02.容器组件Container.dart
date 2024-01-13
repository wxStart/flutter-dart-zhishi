import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      color: const Color.fromRGBO(0, 0, 0, 0.35),
    );
  }
}

class EdgeInsetsContainer extends StatelessWidget {
  const EdgeInsetsContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      color: const Color.fromRGBO(255, 0, 0, 1),
      padding: const EdgeInsets.all(10),
    );
  }
}

class DecorationContainer extends StatelessWidget {
  double scale = 1.0;
  DecorationContainer({super.key, required this.scale});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      // transform: Matrix4.translationValues(20, 0, 0), 平移
      // transform: Matrix4.rotationZ(0.1), //旋转
      // transform: Matrix4.skewX(1), // 斜切  倾斜
      transform: Matrix4.identity() * scale, // 缩放

      decoration: const BoxDecoration(
        color: Color.fromRGBO(0, 255, 0, 1),
        // 设置渐变后 color失效
        gradient: LinearGradient(colors: [Colors.blue, Colors.red]),
        border: Border(
          top: BorderSide(
            width: 10,
            color: Colors.red,
          ),
          left: BorderSide(width: 10, color: Colors.red),
          right: BorderSide(width: 10, color: Colors.red),
          bottom: BorderSide(width: 10, color: Colors.red),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(2, 4),
            blurRadius: 5,
          ),
        ],
        // borderRadius: BorderRadius.all(Radius.circular(5))
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(3),
          topRight: Radius.elliptical(50, 20),
        ),
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
          title: const Text('容器组件'),
        ),
        body: Column(
          children: [
            const MyContainer(),
            const EdgeInsetsContainer(),
            DecorationContainer(
              scale: 1.0,
            ),
            DecorationContainer(
              scale: 1.5,
            ),
          ],
        ),
      ),
    );
  }
}
