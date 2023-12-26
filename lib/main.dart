import 'package:flutter/material.dart';

import 'model/car.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

final List<Car> datas = [
  const Car(
      name: '奥迪 A8L',
      imageUrl:
          'https://ecmb.bdimg.com/tam-ogel/-867577911_1742636947_360_212.png'),
  const Car(
      name: '全新奥迪 S6 Limousine',
      imageUrl:
          'https://ecmb.bdimg.com/tam-ogel/-742085191_1622516110_360_212.png'),
  const Car(
      name: '奥迪 S8L',
      imageUrl:
          'https://ecmb.bdimg.com/tam-ogel/-1411144402_237036289_360_212.png'),
  const Car(
      name: '奥迪 RS5 Sportback',
      imageUrl:
          'https://ecmb.bdimg.com/tam-ogel/1362499174_-569842388_360_212.png'),
  const Car(
      name: '奥迪 RS5 Coupe',
      imageUrl:
          'https://ecmb.bdimg.com/tam-ogel/-1315456683_-541196928_360_212.png'),
  const Car(
      name: '奥迪 S5 Cabriolet',
      imageUrl:
          'https://ecmb.bdimg.com/tam-ogel/-826286272_1605892322_360_212.png'),
  const Car(
      name: '奥迪 S5 Coupe',
      imageUrl:
          'https://ecmb.bdimg.com/tam-ogel/152568420_1744918669_360_212.png'),
  const Car(
      name: '奥迪 Q7',
      imageUrl:
          'https://ecmb.bdimg.com/tam-ogel/1490712978_535836661_360_212.png'),
  const Car(
      name: '奥迪 Q8',
      imageUrl:
          'https://ecmb.bdimg.com/tam-ogel/2063038666_-788492482_360_212.png'),
  const Car(
      name: '奥迪 RS4 Avant',
      imageUrl:
          'https://ecmb.bdimg.com/tam-ogel/461192367_1256804435_360_212.png'),
];

class Home extends StatelessWidget {
  // _的内容是指文件内部
  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.black26,
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.amber,
            child: Image.network(datas[index].imageUrl!),
          ),
          const SizedBox(height: 10),
          Text(datas[index].name!)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('我的flutter-app'),
      ),
      body:
          ListView.builder(itemBuilder: _itemBuilder, itemCount: datas.length),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      '自定的组就按',
      textDirection: TextDirection.rtl,
      style: TextStyle(
          fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.red),
    ));
  }
}
