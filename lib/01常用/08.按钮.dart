import 'package:flutter/material.dart';

class CyBtn extends StatelessWidget {
  const CyBtn({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {
            print('TextButton');
          },
          onLongPress: () {
            print('TextButton 长按了');
          },
          child: const Text('TextButton'),
        ),
        OutlinedButton(
          onPressed: () {
            print('OutlinedButton');
          },
          onLongPress: () {
            print('OutlinedButton 长按了');
          },
          child: const Text('OutlinedButton'),
        ),
        ElevatedButton(
          onPressed: () {
            print('ElevatedButton');
          },
          onLongPress: () {
            print('ElevatedButton 长按了');
          },
          child: const Text('ElevatedButton'),
        )
      ],
    );
  }
}

class CyBtnStyle extends StatelessWidget {
  const CyBtnStyle({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
              const TextStyle(
                fontSize: 12.0,
              ),
            ),
            foregroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                // 按下按钮时候的颜色
                return Colors.red;
              }
              return Colors.black;
            }),
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                // 按下按钮时候的颜色
                return Colors.black38;
              }
              return Colors.white;
            }),
            shadowColor: MaterialStateProperty.all(Colors.amber),
            elevation: MaterialStateProperty.all(5.0),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            minimumSize: MaterialStateProperty.all(const Size(150, 60)),

            // 水波纹颜色
            overlayColor: MaterialStateProperty.all(Colors.blue),
          ),
          onPressed: () {
            print('TextButton');
          },
          onLongPress: () {
            print('TextButton 长按了');
          },
          child: const Text('TextButton'),
        ),
      ],
    );
  }
}

class CyBtnTheme extends StatelessWidget {
  const CyBtnTheme({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButtonTheme(
            data: OutlinedButtonThemeData(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.red),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ),
            child: OutlinedButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.green),
              ),
              onPressed: () {
                print('OutlinedButton');
              },
              onLongPress: () {
                print('OutlinedButton 长按了');
              },
              child: const Text('OutlinedButton'),
            )),
      ],
    );
  }
}

class IconBtns extends StatelessWidget {
  const IconBtns({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.add),
          color: Colors.red,
          // 水波纹
          splashRadius: 20,
          splashColor: Colors.green, // 不生效
          // highlightColor: Colors.yellow,
          tooltip: '你干嘛点击我呢', // 长按的时候出来
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.create_rounded),
          label: Text('文本'),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.create_rounded),
          label: Text('文本'),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.create_rounded),
          label: Text('文本'),
        )
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('按钮'),
        ),
        body: Column(
          children: [
            const CyBtn(),
            const SizedBox(
              height: 20,
            ),
            const CyBtnStyle(),
            const SizedBox(
              height: 20,
            ),
            const CyBtnTheme(),
            const SizedBox(
              height: 20,
            ),
            const IconBtns(),
            const SizedBox(
              height: 20,
            ),
            const BackButton(
              color: Colors.red,
            ),
            const CloseButton(
              color: Colors.amberAccent,
            ),
            FloatingActionButton(
              onPressed: () {},
              elevation: 0,
              child: const Text('float'),
            )
          ],
        ),
      ),
    );
  }
}
