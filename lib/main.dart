import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        // appBar: AppBar(
        //   title: const Text('我的flutter-app1'),
        // ),
        body: Text('124'),
      ),
    );
  }
}
