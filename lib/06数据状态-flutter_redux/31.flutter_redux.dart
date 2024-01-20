import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import './31.other_page.dart';

class MyReuduxActions {
  static Map Increment = {};
}

int counterReducer(int state, dynamic action) {
  return action == MyReuduxActions.Increment ? state + 1 : state;
}

class MyApp extends StatelessWidget {
  final store = Store<int>(counterReducer, initialState: 10);
  @override
  Widget build(BuildContext context) {
    return FlutterReduxApp(store: store);
  }
}

class FlutterReduxApp extends StatelessWidget {
  final Store<int> store;
  const FlutterReduxApp({
    super.key,
    required this.store,
  });

  @override
  Widget build(BuildContext context) {
    return StoreProvider<int>(
      store: store,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('redux')),
          body: const Demo(),
          floatingActionButton: StoreConnector<int, VoidCallback>(
            converter: (store) {
              return () => store.dispatch(MyReuduxActions.Increment);
            },
            builder: (context, callback) {
              return FloatingActionButton(
                onPressed: callback,
                tooltip: 'Increment',
                child: Icon(Icons.add),
              );
            },
          ),
        ),
      ),
    );
  }
}

// 拆离出来   直接写会出现 context丢失
class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StoreConnector<int, String>(
            converter: (store) => store.state.toString(),
            builder: (context, count) {
              return Text(
                '继续点击: $count',
              );
            },
          ),
          ElevatedButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => OhterPage()));
              },
              child: Text("去别的页面"))
        ],
      ),
    );
  }
}
