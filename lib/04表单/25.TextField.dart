import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('文本框'),
        ),
        body: TextFieldDemo(),
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  String phone = "";
  String password = "";
  String desc = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          autofocus: true, // 自动获取焦点
          keyboardType: TextInputType.phone, //键盘类型
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.mobile_friendly_sharp),
            prefixIconColor: Colors.blue, //

            prefixText: '哈哈哈', // 前缀
            prefixStyle: TextStyle(color: Colors.purpleAccent),

            labelText: "手机号",
            labelStyle: TextStyle(color: Colors.red),

            hintText: "请输入手机号", // 得到焦点时候内容为空的占位
            hintStyle: TextStyle(color: Colors.blue),
            focusedBorder: UnderlineInputBorder(
              //焦点时候设置
              borderSide: BorderSide(
                color: Colors.green,
                width: 2.0,
                style: BorderStyle.solid,
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              // 默认时候的样式 就是没有焦点
              //焦点时候设置
              borderSide: BorderSide(
                color: Colors.blue,
                width: 2.0,
                style: BorderStyle.solid,
              ),
            ),
          ),

          maxLength: 15, // 输入框允许的长度
          onChanged: (value) {
            setState(() {
              phone = value;
            });
          },
        ),
        // 密码
        TextField(
          obscureText: true, // 加密的  密码类才有
          keyboardType: TextInputType.text, //键盘类型
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.lock_outline_sharp),
            prefixIconColor: Colors.blue, //
            labelStyle: TextStyle(color: Colors.red),
            labelText: "密码",
            hintText: "请输入密码", // 内容为空的占位
            hintStyle: TextStyle(color: Colors.deepPurple, fontSize: 20),
          ),

          maxLength: 15, // 输入框允许的长度
          onChanged: (value) {
            setState(() {
              password = value;
            });
          },
        ),
        // 文本域
        TextField(
          keyboardType: TextInputType.text, //键盘类型
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.description),
            prefixIconColor: Colors.blue, //
            labelStyle: TextStyle(color: Colors.red),
            hintText: "请介绍一下自己", // 内容为空的占位
            hintStyle: TextStyle(color: Colors.deepPurple, fontSize: 20),
          ),
          maxLines: 5,
          maxLength: 100, // 输入框允许的长度
          onChanged: (value) {
            setState(() {
              password = value;
            });
          },
        )

        //
      ],
    );
  }
}
