import 'dart:async';

void main(List<String> args) {
  final StreamController controller = StreamController.broadcast();

  controller.stream.listen((event) {
    print("data1 $event");
  });

  //给数据流添加数据
  controller.sink.add('abc');

  controller.stream.listen((event) {
    print("data2 $event");
  });

  controller.sink.add('abc12');
}
