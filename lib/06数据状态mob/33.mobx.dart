import 'package:flutter/material.dart';
import './todo_widgets.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mobx',
      home: TodoExample(),
    );
  }
}
