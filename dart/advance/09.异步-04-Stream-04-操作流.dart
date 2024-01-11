import 'dart:async';

void main(List<String> args) {
  Duration period = Duration(seconds: 1);

  //! take 只拿五条数据

  // Stream.periodic(period, (data) => data).take(5).listen((event) {
  //   print("take $event");
  // }).onDone(() {
  //   print("take 接收完成了");
  // });

  //! takeWhile 只拿小于5的数据
  // Stream.periodic(period, (data) => data).takeWhile(((element) {
  //   return element < 5;
  // })).listen((event) {
  //   print("takeWhile  $event");
  // }).onDone(() {
  //   print("takeWhile 接收完成了");
  // });

  //! where

  // Stream.periodic(period, (data) => data)
  //     .takeWhile(((element) {
  //       return element < 5;
  //     }))
  //     .where((event) => event % 2 == 0)
  //     .listen((event) {
  //       print("where  $event");
  //     })
  //     .onDone(() {
  //       print("where 接收完成了");
  //     });

  // !distinct
  // Stream.fromIterable(['1111', '1111', '222', '1111', '222', '222'])
  //     .distinct() // 去掉与前一个相同的数据， 去掉连续重复的的值
  //     .listen((event) {
  //   print("fromIterable $event");
  // }).onDone(() {
  //   print("fromIterable 接收完成了");
  // });

  //! skip | skipWhile
  // Stream.periodic(period, (data) => data)
  //     .takeWhile(((element) {
  //       return element < 5;
  //     }))
  //     .skip(2) // 跳过两个
  //     .listen((event) {
  //       print("skip  $event");
  //     })
  //     .onDone(() {
  //       print("skip 接收完成了");
  //     });

  //! expand
  Stream.periodic(period, (data) => data + 1).takeWhile(((element) {
    return element <= 3;
  })).expand((e) {
    return [e, e * 10, e * 100];
  }).listen((event) {
    print("expand  $event");
  }).onDone(() {
    print("expand 接收完成了");
  });
}
