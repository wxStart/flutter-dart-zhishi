import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import './store/counter.dart';

class OhterPage extends StatelessWidget {
  OhterPage({
    super.key,
  });
  final Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Container(
      color: Colors.pinkAccent,
      child: Scaffold(
        appBar: AppBar(title: Text('其他')),
        body: Column(
          children: [
            Observer(
              builder: (context) => Text(
                '${counter.count}',
                style: TextStyle(fontSize: 42.0),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                counter.add(1);
              },
              child: Text('增加'),
            ),
            ElevatedButton(
              onPressed: () {
                counter.sub();
              },
              child: Text('减少'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OhterPage()));
              },
              child: Text('去页面'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('返回'),
            )
          ],
        ),
      ),
    );
  }
}
