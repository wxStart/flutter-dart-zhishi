import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import './31.flutter_redux.dart';

class OhterPage extends StatelessWidget {
  OhterPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pinkAccent,
      child: Scaffold(
        appBar: AppBar(title: Text('其他')),
        body: Column(
          children: [
            StoreConnector<int, String>(
              converter: (store) => store.state.toString(),
              builder: (context, count) {
                return Text(
                  '继续点击: $count',
                );
              },
            ),
            StoreConnector<int, VoidCallback>(
              converter: (store) {
                return () => store.dispatch(MyReuduxActions.Increment);
              },
              builder: (context, callback) {
                return ElevatedButton(
                  onPressed: callback,
                  child: Text('增加'),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OhterPage()));
              },
              child: Text('去页面'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('返回'),
            )
          ],
        ),
      ),
    );
  }
}
