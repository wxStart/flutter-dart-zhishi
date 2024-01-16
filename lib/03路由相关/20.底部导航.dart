import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const RootPage();
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  final List<BottomNavigationBarItem> items = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: '首页',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: "搜索",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: '我的',
    )
  ];

  final List<Widget> pages = [
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

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('底部导航'),
        ),
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: items,
          currentIndex: currentIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          // fixedColor: Colors.red,
          backgroundColor: Colors.green[100],
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            if (value != currentIndex) {
              setState(() {
                currentIndex = value;
              });
            }
          },
        ),
      ),
    );
  }
}
