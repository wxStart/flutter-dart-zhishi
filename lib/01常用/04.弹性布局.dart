import 'package:flutter/material.dart';

class FlexDome extends StatelessWidget {
  const FlexDome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              color: Colors.green,
              width: 60,
              child: Text('剩下的部分都是 Expanded'),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red[200],
                height: 50,
              ),
            )
          ],
        ),
        const Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          textDirection: TextDirection.rtl,
          children: [
            Text("Flex "),
            Icon(Icons.dangerous, size: 25),
            Icon(Icons.leave_bags_at_home_sharp, size: 25),
            Icon(Icons.face, size: 55),
            Icon(Icons.heart_broken, size: 25),
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
                height: 50,
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.red[200],
                height: 50,
              ),
            )
          ],
        )
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
          title: const Text('弹性布局'),
        ),
        body: FlexDome(),
      ),
    );
  }
}
