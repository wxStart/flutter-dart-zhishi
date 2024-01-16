import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TabPage());
  }
}

class TabPage extends StatelessWidget {
  TabPage({super.key});
  final List<Tab> tabs = [
    Tab(
      text: '首页',
      icon: Icon(Icons.home),
    ),
    Tab(
      text: '搜索',
      icon: Icon(Icons.search),
    ),
    Tab(
      text: '我的',
      icon: Icon(Icons.person),
    )
  ];
  final List<Widget> tabView = [
    const Icon(
      Icons.home,
      size: 50,
    ),
    const Icon(
      Icons.search,
      size: 50,
    ),
    const Icon(
      Icons.person,
      size: 50,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tabs 导航'),
          bottom: TabBar(
            tabs: tabs,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.green,
          ),
        ),
        body: TabBarView(children: tabView),
        bottomNavigationBar: TabBar(
          tabs: tabs,
          labelColor: Colors.red,
          unselectedLabelColor: Colors.green,
        ),
      ),
    );
  }
}
