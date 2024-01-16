import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('开关组件'),
        ),
        body: const Column(
          children: [SwitchDemo()],
        ),
      ),
    );
  }
}

class SwitchDemo extends StatefulWidget {
  const SwitchDemo({super.key});

  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Switch(
              value: _value,
              onChanged: onChanged,
              activeColor: Colors.red,
              activeTrackColor: Colors.green,
              inactiveThumbColor: Colors.blue,
              inactiveTrackColor: Colors.purple,
            ),
            Text("安卓当前的状态值:${_value ? '选中' : '未选中'}"),
          ],
        ),
        Row(
          children: [
            CupertinoSwitch(
              value: _value,
              onChanged: onChanged,
              activeColor: Colors.red, // 激活轨道颜色
              thumbColor: Colors.green, // 圆圈的颜色
              trackColor: Colors.blue, // 未选中的时候的颜色
            ),
            Text("Ios当前的状态值:${_value ? '选中' : '未选中'}")
          ],
        ),
      ],
    );
  }

  void onChanged(bool value) {
    setState(() {
      _value = value;
    });
  }
}
