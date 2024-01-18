import 'package:flutter/material.dart';
import 'dart:math';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('动画'),
        ),
        body: AnimateDemo(),
      ),
    );
  }
}

class AnimateDemo extends StatefulWidget {
  const AnimateDemo({super.key});

  @override
  State<AnimateDemo> createState() => _AnimateDemoState();
}

// 动画需要混入 SingleTickerProviderStateMixin
class _AnimateDemoState extends State<AnimateDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation<double> animation;

  late Animation<double> sizeAnimation;
  late Animation<Color?> colorAnimation;
  late Animation<double> totationAnimation;

  @override
  void initState() {
    super.initState();

    // 1.创建动画控制器
    controller =
        AnimationController(duration: const Duration(seconds: 10), vsync: this);

    // 创建动画
    animation =
        CurvedAnimation(parent: controller, curve: const Interval(0.0, 0.5));

    // 反复执行

    // 设置其他动画
    sizeAnimation = Tween(
      begin: 10.0,
      end: 200.0,
    ).animate(controller);

    //!可以设置多个相同的
    colorAnimation = ColorTween(
      begin: Colors.red,
      end: Colors.blue,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.4, 0.6, curve: Curves.bounceIn),
      ),
    );
    colorAnimation = ColorTween(
      begin: Colors.blue,
      end: Colors.green,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.6, 0.8, curve: Curves.bounceIn),
      ),
    );

    totationAnimation = Tween(
      begin: 0.0,
      end: 2 * pi,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.8, 1.0, curve: Curves.easeIn),
      ),
    );

    controller.addListener(() {
      // print('动画执行中 ： ${animation.value}');
      setState(() {});
    });
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              // 执行动画
              controller.forward();
            },
            child: Text('重复执行'),
          ),
          ElevatedButton(
            onPressed: () {
              controller.stop();
            },
            child: const Text('停止执行'),
          ),
          Opacity(
            opacity: controller.value,
            child: Transform.rotate(
              angle: totationAnimation.value,
              child: Container(
                width: sizeAnimation.value,
                height: sizeAnimation.value,
                color: colorAnimation.value,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    // 卸载释放动画
    controller.dispose();
  }
}
