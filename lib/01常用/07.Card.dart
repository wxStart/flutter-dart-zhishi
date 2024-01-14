import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: const Text('层叠布局 Stack'),
          ),
          body: Column(
            children: [
              Card(
                color: Colors.red[100],
                shadowColor: Colors.blue,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                    side: const BorderSide(
                      color: Colors.green,
                      width: 10,
                    )),
                margin: const EdgeInsets.all(10),
                child: const Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.verified_user, size: 10),
                      title: Text('360'),
                      subtitle: Text('杀毒软件'),
                    ),
                    ListTile(
                      title: Text('360奇虎公司'),
                    )
                  ],
                ),
              ),
              Card(
                color: Colors.red[100],
                shadowColor: Colors.blue,
                elevation: 10,
                margin: const EdgeInsets.all(10),
                child: const Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.verified_user, size: 10),
                      title: Text('360'),
                      subtitle: Text('杀毒软件'),
                    ),
                    ListTile(
                      title: Text('公司：360奇虎公司'),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
