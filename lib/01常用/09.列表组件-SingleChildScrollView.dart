import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('SingleChildScrollView'),
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              reverse: true,
              child: Row(
                children: List.generate(
                  6,
                  (index) => Container(
                    height: 30,
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text('文本块可以左右滑动_ $index'),
                  ),
                ),
              ),
            ),
            Container(
              height: 300,
              color: Colors.amberAccent[100],
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                // physics: BouncingScrollPhysics(),
                physics: const ClampingScrollPhysics(),
                child: Column(
                  children: List.generate(
                    16,
                    (index) => Container(
                      height: 30,
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Text('文本块可以上下滑动_ $index'),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
