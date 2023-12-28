import 'package:flutter/material.dart';
// import 'package:flutter_application_1/often-com/Often.dart';
// import './components/listview_demo.dart';

import './state-com//State.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('我的flutter-app1'),
        ),
        body: const StateDome(),
      ),
    );
  }
}
