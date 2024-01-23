import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuerySearch extends StatelessWidget {
  const QuerySearch({super.key});
  @override
  Widget build(BuildContext context) {
    dynamic query = Get.parameters;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('GetX-路由-QuerySearch'),
      ),
      body: Column(
        children: [
          Text('GetX-路由-QuerySearch  id: ${query['id']}'),
          Text('GetX-路由-QuerySearch  abc: ${query['abc']}'),
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text('返回'),
          ),
        ],
      ),
    );
  }
}
