import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '29.国际化-03-语言定义.dart';

//自定与语言

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        // 指定那些组件需要进行国际化
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        CustomLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('zh', 'CN'), // Spanish
        Locale('en', 'US'), // English
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        print("device locale:${locale}");
        print("languageCode :${locale!.languageCode}");
        print("countryCode :${locale!.countryCode}");
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode &&
              supportedLocale.countryCode == locale.countryCode) {
            // 检测到就返回检测到的
            return supportedLocale;
          }
          // 没有匹配到返回第一个
          return supportedLocales.first;
        }
      },
      home: const ChangeLocalDemo(),
    );
  }
}

class ChangeLocalDemo extends StatefulWidget {
  const ChangeLocalDemo({super.key});

  @override
  State<ChangeLocalDemo> createState() => _ChangeLocalDemoState();
}

class _ChangeLocalDemoState extends State<ChangeLocalDemo> {
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
    return Localizations.override(
      context: context,
      locale: Locale(lang),
      // Using a Builder to get the correct BuildContext.
      // Alternatively, you can create a new widget and Localizations.override
      // will pass the updated BuildContext to the new widget.
      child: Builder(
        builder: (context) {
          // A toy example for an internationalized Material widget.
          return Scaffold(
            backgroundColor: Colors.grey[100],
            appBar: AppBar(
              title: Text(
                  '内置组件国家化, ${Localizations.of(context, CustomLocalizations).t('title', '头部标题')} '),
            ),
            body: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      onChangeLang('en');
                    },
                    child: Text('英文')),
                ElevatedButton(
                    onPressed: () {
                      onChangeLang('zh');
                    },
                    child: Text('中文')),
                Container(
                  child: Text(
                    Localizations.of(context, CustomLocalizations)
                        .t('greet', '不存在的时候的默认值'),
                  ),
                ),
                Container(
                  child: Text(
                    Localizations.of(context, CustomLocalizations)
                        .t('greet1', ' greet1不存在的时候的默认值'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
