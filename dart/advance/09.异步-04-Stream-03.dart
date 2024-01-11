import 'dart:async';

Future<String> getData(int n) {
  return Future.delayed(Duration(seconds: n), () => "12345");
}

void main(List<String> args) {
  Stream.fromFuture(getData(2)).listen((event) {
    print("fromFuture $event");
  }).onDone(() {
    print("fromFuture 接收完成了");
  });

  Stream.fromFutures([getData(3), getData(4)]).listen((event) {
    print("fromFutures $event");
  }).onDone(() {
    print("fromFutures 接收完成了");
  });

  Stream.fromIterable(['1111', '222']).listen((event) {
    print("fromIterable $event");
  }).onDone(() {
    print("fromIterable 接收完成了");
  });

  Duration period = Duration(seconds: 1);

// take 只拿五条数据
  Stream.periodic(period, (data) => data).take(5).listen((event) {
    print("periodic $event");
  }).onDone(() {
    print("periodic 接收完成了");
  });
}
