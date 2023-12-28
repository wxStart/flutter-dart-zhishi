import 'package:flutter/material.dart';

//!单文本
class TextDome extends StatelessWidget {
  final _textStyle = const TextStyle(
    fontSize: 22.0,
  );

  final String _lector = '小新';

  @override
  Widget build(BuildContext context) {
    return Text(
      '《$_lector》, 每当创建一个新的 Flutter 应用时，一些 Flutter IDE 插件会请你输入一个类似 com.example 的包名，包名（在 iOS 里叫 Bundle ID）一般都是公司域名的反写。如果你的应用打算上架商店，建议一开始的时候把这个全网唯一的包名设置好，因为应用上架之后就不能再修改了。',
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 2, // 最多显示两行
      overflow: TextOverflow.ellipsis, // 截断的形式，省略号结尾
    );
  }
}

//! 多文本
class RichDome extends StatelessWidget {
  final _textStyle = const TextStyle(
    fontSize: 22.0,
  );

  final String _lector = '小新';

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '《$_lector》',
        children: <TextSpan>[
          TextSpan(
            text: '第一段',
            style: TextStyle(
              fontSize: 20,
              color: Colors.green[300],
            ),
          ),
          TextSpan(
            text: '第二段',
            style: TextStyle(
              fontSize: 24,
              color: Colors.blue[300],
            ),
          ),
          TextSpan(
            text: '第三段',
            style: _textStyle,
          )
        ],
        style: TextStyle(
          fontSize: 30,
          color: Colors.red[400],
        ),
      ),
    );
  }
}

class RowDome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment:
            CrossAxisAlignment.baseline, // baseline的时候需要和 textBaseline配合使用
        textBaseline: TextBaseline.alphabetic,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              alignment:
                  const Alignment(0, 0), //修饰子部件 child相对自己的定位 （-1~1，所以0是中间）
              color: Colors.red[200],
              height: 80,
              width: 80,
              child: const Text(
                '哈哈',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment:
                  const Alignment(0, 0), //修饰子部件 child相对自己的定位 （-1~1，所以0是中间）
              color: Colors.red[200],
              height: 60,
              width: 100,
              child: const Text(
                'asdy',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Container(
            alignment: const Alignment(0, 0), //修饰子部件 child相对自己的定位 （-1~1，所以0是中间）
            color: Colors.red[200],
            height: 300,
            width: 100,
            child: const Text(
              'fsf',
              style: TextStyle(fontSize: 26),
            ),
          )
        ],
      ),
    );
  }
}
