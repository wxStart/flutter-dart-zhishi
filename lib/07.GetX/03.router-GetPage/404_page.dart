import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotFound extends StatelessWidget {
  const NotFound({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('GetX-路由-404'),
      ),
      body: Column(
        children: [Text('NotFound')],
      ),
    );
  }
}
