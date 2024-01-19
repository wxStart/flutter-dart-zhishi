import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '29.国际化-02-语言定义.dart';

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
        Locale('en', 'US'), // English
        Locale('zh', 'CN'), // Spanish
      ],
      home: Demo(),
    );
  }
}

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
            '内置组件国家化, ${Localizations.of(context, CustomLocalizations).t('title')} '),
      ),
      body: Column(
        children: [
          CalendarDatePickerDemo(),
          Container(
            child: Text(
              Localizations.of(context, CustomLocalizations).t('greet'),
            ),
          ),
          ReloadLocal(),
          ReloadLocal2(),
        ],
      ),
    );
  }
}

class Demo2 extends StatelessWidget {
  const Demo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Localizations.override(
      context: context,
      locale: const Locale('zh', 'CN'),
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
                  '内置组件国家化, ${Localizations.of(context, CustomLocalizations).t('title')} '),
            ),
            body: Column(
              children: [
                CalendarDatePickerDemo(),
                Container(
                  child: Text(
                    Localizations.of(context, CustomLocalizations).t('greet'),
                  ),
                ),
                ReloadLocal(),
                ReloadLocal2(),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ReloadLocal2 extends StatelessWidget {
  const ReloadLocal2({super.key});
  @override
  Widget build(BuildContext context) {
    return Localizations.override(
      context: context,
      locale: const Locale('zh', 'CN'),
      // Using a Builder to get the correct BuildContext.
      // Alternatively, you can create a new widget and Localizations.override
      // will pass the updated BuildContext to the new widget.
      child: Builder(
        builder: (context) {
          // A toy example for an internationalized Material widget.
          return Container(
            child: Text(
              Localizations.of(context, CustomLocalizations).t('greet'),
            ),
          );
        },
      ),
    );
  }
}

class ReloadLocal extends StatelessWidget {
  const ReloadLocal({super.key});
  @override
  Widget build(BuildContext context) {
    return Localizations.override(
      context: context,
      locale: const Locale('zh', 'CN'),
      // Using a Builder to get the correct BuildContext.
      // Alternatively, you can create a new widget and Localizations.override
      // will pass the updated BuildContext to the new widget.
      child: Builder(
        builder: (context) {
          // A toy example for an internationalized Material widget.
          return CalendarDatePicker(
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime(2100),
            onDateChanged: (value) {},
          );
        },
      ),
    );
  }
}

class CalendarDatePickerDemo extends StatelessWidget {
  CalendarDatePickerDemo({super.key});
  void onDateChanged(day) {
    print(day);
  }

  DateTime firstDate = DateTime(2024);
  DateTime lastDate = DateTime(2025);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CalendarDatePicker(
        initialDate: DateTime.now(),
        firstDate: firstDate,
        lastDate: lastDate,
        onDateChanged: onDateChanged,
      ),
    );
  }
}
