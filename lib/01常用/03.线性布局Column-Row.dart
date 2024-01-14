import 'package:flutter/material.dart';

class RowDemo extends StatelessWidget {
  const RowDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Row'),
        Container(
          width: 50,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: 50,
          height: 300,
          color: Colors.blue,
        ),
      ],
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
          title: const Text('线性布局 column  row'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Column"),
            Container(
              width: 200,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.blue,
            ),
            RowDemo(),
          ],
        ),
      ),
    );
  }
}
