import 'dart:async';

void main(List<String> args) {
  final StreamController controller = StreamController();

  controller.stream.listen((event) {
    print(event);
  });

  // Unhandled exception:
  // Bad state: Stream has already been listened to.
  // controller.stream.listen((event) {
  //   print(event);
  // });

  //给数据流添加数据
  controller.sink.add('abc');
  controller.sink.add('abc12');
}
