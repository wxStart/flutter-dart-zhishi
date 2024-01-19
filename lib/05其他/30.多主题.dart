import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '29.国际化-03-语言定义.dart';

//自定与语言

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        buttonTheme: ButtonThemeData(
          textTheme: ButtonTextTheme.accent,
        ),
        splashColor: Colors.green,

        // Define the default brightness and colors.
        colorScheme: ColorScheme.fromSeed(
          primary: Colors.red, // 文字颜色
          onPrimary: Colors.green,
          seedColor: Colors.purple,
        ),
      ),
      home: ChangeDemo(),
    );
  }
}

class ChangeDemo extends StatefulWidget {
  const ChangeDemo({super.key});

  @override
  State<ChangeDemo> createState() => _ChangeDemoState();
}

class _ChangeDemoState extends State<ChangeDemo> {
  String _lang = 'zh';

  void onChangeLang(String lang) {
    if (lang != _lang) {
      setState(() {
        _lang = lang;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Demo(lang: _lang, onChangeLang: onChangeLang),
    );
  }
}

class Demo extends StatelessWidget {
  final String lang;
  Function onChangeLang;
  Demo({super.key, this.lang = 'zh', required this.onChangeLang});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('多主题 '),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                onChangeLang('en');
              },
              child: Text('暗色')),
          ElevatedButton(
            onPressed: () {
              onChangeLang('zh');
            },
            child: Text('亮色'),
          ),
        ],
      ),
    );
  }
}
