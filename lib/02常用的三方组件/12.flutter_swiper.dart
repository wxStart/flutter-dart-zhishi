// https://httpbin.org/ip

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class DioDemo extends StatefulWidget {
  const DioDemo({super.key});

  @override
  State<DioDemo> createState() => _DioDemoState();
}

class _DioDemoState extends State<DioDemo> {
  String _ip = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.red,
          height: 480,
          child: new Swiper(
            itemBuilder: (BuildContext context, int index) {
              return new Image.network(
                "http://via.placeholder.com/288x188",
                fit: BoxFit.fill,
              );
            },
            itemCount: 10,
            itemWidth: 300.0,
            itemHeight: 400.0,
            layout: SwiperLayout.TINDER,
            // pagination: SwiperPagination(), // 小圆点
            // control: SwiperControl(), // 左右箭头
          ),
        )
      ],
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
          title: const Text('三方 flutter_swiper'),
        ),
        body: DioDemo(),
      ),
    );
  }
}
