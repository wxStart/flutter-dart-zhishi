import 'package:flutter/material.dart';

class GridViwDemo extends StatelessWidget {
  const GridViwDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      color: Colors.red,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 1.5,
        ),
        children: List.generate(
          16,
          (index) => Container(
            color: Colors.green,
            child: Text('listview $index'),
          ),
        ),
      ),
    );
  }
}

class GridViwDemo1 extends StatelessWidget {
  const GridViwDemo1({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      margin: const EdgeInsets.only(top: 20),
      color: Colors.red,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100, // 子组件的宽度
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.67,
        ),
        children: List.generate(
          16,
          (index) => Container(
            color: Colors.green,
            child: Text('listview $index'),
          ),
        ),
      ),
    );
  }
}

class GridViewCout extends StatelessWidget {
  const GridViewCout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.only(top: 30),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 1.6,
        // physics: const BouncingScrollPhysics(), // 有反弹效果 允许滚动出区域反弹回去
        // physics: const ClampingScrollPhysics(), // 没有反弹效果
        // physics: NeverScrollableScrollPhysics(), // 禁止滚动
        // physics: AlwaysScrollableScrollPhysics(), // 响应滚动

        children: List.generate(
          17,
          (index) => Container(
            color: Colors.green,
            child: Text('listview $index'),
          ),
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
          title: const Text('ListView'),
        ),
        body: const Column(
          children: [GridViwDemo(), GridViwDemo1(), GridViewCout()],
        ),
      ),
    );
  }
}
