import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        // 指定那些组件需要进行国际化
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', 'US'), // English
        Locale('zh', 'CN'), // Spanish
      ],
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('内置组件国家化'),
        ),
        body: Column(
          children: [
            CalendarDatePickerDemo(),
            LocaleDemo(),
          ],
        ),
      ),
    );
  }
}

class LocaleDemo extends StatelessWidget {
  const LocaleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          Future<TimeOfDay?> selectedTime = showTimePicker(
            initialTime: TimeOfDay.now(),
            context: context,
          );
        },
        child: Text('打开日期'),
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
