import 'package:flutter/material.dart';
import '../model/car.dart';

class ListViewDemo extends StatelessWidget {
  // _的内容是指文件内部
  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.black26,
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.amber,
            child: Image.network(datas[index].imageUrl!),
          ),
          const SizedBox(height: 10),
          Text(datas[index].name!)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: _itemBuilder, itemCount: datas.length);
  }
}
