import 'package:flutter/material.dart';

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

  late Animation animation;

  late double oldVlaue;
  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    // 2.1 声明动画曲线
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    // 2.2 设置动画取值范围 也就是0~1 的映射关系
    animation = Tween(begin: 40.0, end: 180.0).animate(controller);

    // 3. 监听动画
    animation.addListener(() {
      // print('动画执行中 ： ${animation.value}');
      oldVlaue = animation.value;
      setState(() {});
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
            child: Text('方大'),
          ),
          ElevatedButton(
            onPressed: () {
              controller.reverse();
            },
            child: Text('缩小'),
          ),
          ElevatedButton(
            onPressed: () {
              animation.addStatusListener((status) {
                if (status == AnimationStatus.completed) {
                  controller.reverse();
                } else if (status == AnimationStatus.dismissed) {
                  controller.forward();
                }
              });
              // 执行动画
              controller.forward();
            },
            child: Text('重复'),
          ),
          ElevatedButton(
            onPressed: () {
              // 执行动画
              controller.stop();
            },
            child: Text('停止'),
          ),
          ElevatedButton(
            onPressed: () {
              if (oldVlaue != null) {
                print(animation.status);
                if (animation.status == AnimationStatus.reverse) {
                  controller.reverse(from: (oldVlaue - 40) / (180 - 40));
                } else if (animation.status == AnimationStatus.forward) {
                  controller.forward(from: (oldVlaue - 40) / (180 - 40));
                }
              }
            },
            child: Text('继续'),
          ),
          Icon(
            Icons.person,
            size: animation.value,
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
