// https://httpbin.org/ip

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenbcesDemo extends StatefulWidget {
  const SharedPreferenbcesDemo({super.key});

  @override
  State<SharedPreferenbcesDemo> createState() => _SharedPreferenbcesDemoState();
}

class _SharedPreferenbcesDemoState extends State<SharedPreferenbcesDemo> {
  late num _count = 0;
  late String _name = '';

  @override
  void initState() {
    _getSharedPreferences();
    super.initState();
  }

  void _setSharedPreferences() async {
    SharedPreferences p = await SharedPreferences.getInstance();
    String name = p.getString("name") ?? '123';
    int count = p.getInt("count") ?? 1;

    await p.setString('name', name + '--s-');
    await p.setInt('count', count + 1);
  }

  void _getSharedPreferences() async {
    SharedPreferences p = await SharedPreferences.getInstance();
    String name = p.getString("name") ?? '123';
    int count = p.getInt("count") ?? 1;

    setState(() {
      _count = count;
      _name = name;
    });
    print('设置上了');
  }

  void _clearSharedPreferences() async {
    SharedPreferences p = await SharedPreferences.getInstance();
    // p.remove('count');
    p.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                _setSharedPreferences();
              },
              child: Text('设置'),
            ),
            ElevatedButton(
              onPressed: () {
                _getSharedPreferences();
              },
              child: Text('获取'),
            ),
            ElevatedButton(
              onPressed: () {
                _clearSharedPreferences();
              },
              child: Text('清除'),
            ),
          ],
        ),
        Row(
          children: [
            Text('获取到的内容'),
            Text('name: $_name'),
            Text('count : $_count'),
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
          title: const Text('三方 本地存储'),
        ),
        body: SharedPreferenbcesDemo(),
      ),
    );
  }
}
