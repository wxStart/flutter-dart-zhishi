import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import './store/counter.dart';
import './other_page.dart';

class MyApp extends StatelessWidget {
  final Counter counter = Counter();
  @override
  Widget build(BuildContext context) {
    return Provider<Counter>(
      create: (_) => counter,
      child: const MaterialApp(
        home: Demo(),
      ),
    );
  }
}

class Demo extends StatelessWidget {
  const Demo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('mobx conuter'),
      ),
      body: Column(
        children: [
          const Text(
            'Counter',
            style: TextStyle(fontSize: 30.0),
          ),
          Observer(
              builder: (context) => Text(
                    '${counter.count}',
                    style: TextStyle(fontSize: 42.0),
                  )),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  counter.add(2);
                },
                child: Icon(
                  Icons.add,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  counter.sub();
                },
                child: Icon(
                  Icons.remove,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OhterPage()));
                },
                child: Text('去别的页面'),
              )
            ],
          )
        ],
      ),
    );
  }
}
