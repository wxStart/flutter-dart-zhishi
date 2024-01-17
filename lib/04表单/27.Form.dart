import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('表单'),
        ),
        body: FormDemo(),
      ),
    );
  }
}

class FormDemo extends StatefulWidget {
  const FormDemo({super.key});

  @override
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  final GlobalKey<FormState> _fromKey = GlobalKey<FormState>();

  String _phone = '';
  String _password = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Form(
            key: _fromKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    helperText: "账号一般是手机号",
                    hintText: '输入手机号',
                    label: Text('手机号'),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '手机号不能为空';
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    _phone = newValue!;
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    helperText: "密码至少是2位",
                    hintText: '输入账号密码',
                    label: Text('密码'),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '密码不能为空';
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    _password = newValue!;
                  },
                )
              ],
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  if (_fromKey.currentState!.validate()) {
                    // 会在save中去执行每个onSaved
                    _fromKey.currentState!.save();
                    print(_phone);
                    print(_password);
                  }
                },
                child: const Text("提交"),
              ),
              ElevatedButton(
                onPressed: () {
                  _fromKey.currentState!.reset();
                },
                child: const Text("重置"),
              )
            ],
          )
        ],
      ),
    );
  }
}
