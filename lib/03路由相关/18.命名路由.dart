import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'home': (context) => const Home(),
        'about': (context) => const About(),
      },
      initialRoute: 'home',
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => const UnknownPage(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('命名路由 - home'),
      ),
      body: Container(
        child: Column(
          children: [
            const Text(
              "首页",
              style: TextStyle(fontSize: 32),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "about",
                  arguments: {"title": "传过去的参数11212"},
                );
              },
              child: const Text('about'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "about111",
                );
              },
              child: const Text('未知的页面'),
            ),
          ],
        ),
      ),
    );
  }
}

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic arguments = ModalRoute.of(context)!.settings.arguments!;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('命名路由 - about'),
      ),
      body: Container(
        child: Column(
          children: [
            Text(
              "首页, 跳转过来传递的参数： ${arguments["title"]}",
              style: const TextStyle(fontSize: 32),
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

class UnknownPage extends StatelessWidget {
  const UnknownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('404'),
      ),
      body: Container(
        child: Column(
          children: [
            const Text(
              '404',
              style: TextStyle(fontSize: 32),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('返回'),
            )
          ],
        ),
      ),
    );
  }
}
