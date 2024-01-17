import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('单选框'),
        ),
        body: const Column(
          children: [CheckBoxDemo()],
        ),
      ),
    );
  }
}

class CheckBoxDemo extends StatefulWidget {
  const CheckBoxDemo({super.key});

  @override
  State<CheckBoxDemo> createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  String gender = "1";

  void onChanged(value) {
    setState(() {
      gender = value;
    });
  }

  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              const Text('男'),
              Radio(
                value: "1",
                groupValue: gender,
                onChanged: onChanged,
                activeColor: Colors.red,
                fillColor:
                    MaterialStateColor.resolveWith((states) => Colors.green),
              )
            ],
          ),
          Row(
            children: [
              const Text('女'),
              Radio(
                value: "2",
                groupValue: gender,
                onChanged: onChanged,
                activeColor: Colors.red,
                // fillColor:
                //     MaterialStateColor.resolveWith((states) => Colors.green),
              )
            ],
          ),
          RadioListTile(
            value: "1",
            groupValue: gender,
            onChanged: onChanged,
            title: const Text("男性"),
            subtitle: const Text('染色体Xy的'),
            secondary: const Icon(Icons.person_pin),
            selected: gender == '1',
            activeColor: Colors.red,
          ),
          RadioListTile(
            value: "2",
            groupValue: gender,
            onChanged: onChanged,
            title: const Text("女性"),
            subtitle: const Text('染色体XX的'),
            secondary: const Icon(Icons.person_pin),
            selected: gender == '2',
            activeColor: Colors.red,
          )
        ],
      ),
    );
  }
}
