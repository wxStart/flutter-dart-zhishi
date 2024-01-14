import 'package:flutter/material.dart';

class ListViwDemo extends StatelessWidget {
  const ListViwDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: Colors.red,
      child: ListView(
        children: List.generate(
          16,
          (index) => Container(
            height: 33,
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Text('listview $index'),
          ),
        ),
      ),
    );
  }
}

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: Colors.yellow,
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 33,
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Text('listview -builder --$index'),
          );
        },
        itemCount: 20,
        padding: const EdgeInsets.all(10),
      ),
    );
  }
}

class ListViewseparated extends StatelessWidget {
  const ListViewseparated({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.only(top: 30),
      color: Colors.yellow,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 33,
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Text('listview -builder --$index'),
          );
        },
        // 分割器
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            child: Text('-------- $index --------'),
          );
        },
        itemCount: 20,
      ),
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
          title: const Text('ListView'),
        ),
        body: const Column(
          children: [
            ListViwDemo(),
            ListViewBuilder(),
            ListViewseparated(),
          ],
        ),
      ),
    );
  }
}
