import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('日历组件'),
        ),
        body: Column(
          children: [
            CalendarDatePickerDemo(),
            ShowTimePickerDemo(),
          ],
        ),
      ),
    );
  }
}

class ShowTimePickerDemo extends StatelessWidget {
  const ShowTimePickerDemo({super.key});

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
