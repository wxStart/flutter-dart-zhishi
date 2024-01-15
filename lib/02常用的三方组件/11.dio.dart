// https://httpbin.org/ip

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioDemo extends StatefulWidget {
  const DioDemo({super.key});

  @override
  State<DioDemo> createState() => _DioDemoState();
}

class _DioDemoState extends State<DioDemo> {
  String _ip = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              getIp();
            },
            child: Text('获取ip'),
          ),
          Text("ip: ${_ip}"),
        ],
      ),
    );
  }

  void getIp() async {
    try {
      Response result = await Dio().get('https://httpbin.org/ip');
      setState(() {
        _ip = result.data['origin'];
      });
    } catch (e) {
      print(e);
    }
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('三方 io'),
        ),
        body: DioDemo(),
      ),
    );
  }
}
