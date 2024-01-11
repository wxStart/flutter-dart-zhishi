import 'dart:async';

void main(List<String> args) async {
  String _data = '0';
  Future<String> getData(int n) async {
    for (var i = 0; i < n; i++) {
      _data = '123';
    }
    return _data;
  }

  print('start');

  getData(100).then((value) => {print(value)});

  print('end');
}
