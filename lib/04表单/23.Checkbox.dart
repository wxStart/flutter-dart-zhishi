import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('复选框组件'),
        ),
        body: const Column(
          children: [CheckBoxDemo()],
        ),
      ),
    );
  }
}

class CheckBoxDemo extends StatefulWidget {
  const CheckBoxDemo({super.key});

  @override
  State<CheckBoxDemo> createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool _male = true;
  bool _female = false;
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Checkbox(
            value: _male,
            onChanged: (value) {
              setState(() {
                _male = value!;
              });
            },
          ),
          title: const Text('男'),
        ),
        ListTile(
          leading: Checkbox(
            value: _female,
            activeColor: Colors.red,
            checkColor: Colors.blue,
            // fillColor: Colors.yellow,
            onChanged: (value) {
              setState(() {
                _female = value!;
              });
            },
          ),
          title: const Text('女'),
        ),
        CheckboxListTile(
          value: _value,
          onChanged: (value) {
            setState(() {
              _value = value!;
            });
          },
          secondary: const Icon(
            Icons.sailing,
            size: 40,
          ),
          title: const Text('这里是一个内容'),
        ),
        CheckboxListTile(
          value: _value,
          onChanged: (value) {
            setState(() {
              _value = value!;
            });
          },
          activeColor: Colors.amberAccent,
          secondary: const Icon(
            Icons.sailing,
            size: 40,
          ),
          title: const Text('这里是一个内容'),
          subtitle: const Text('这里是二级标题'),
          selected: _value,
          selectedTileColor: Colors.pink,
        )
      ],
    );
  }
}
