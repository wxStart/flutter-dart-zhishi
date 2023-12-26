import 'package:flutter/material.dart';
import './components/listview_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ListViewDemo());
  }
}
