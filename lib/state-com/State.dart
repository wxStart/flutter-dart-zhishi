import 'package:flutter/material.dart';

// 逻辑和渲染是分开的，所以有了个
class StateDome extends StatefulWidget {
  const StateDome({super.key});

  /**
    @override
    State<StateDome> createState(){
      return _MyWidgetState();
    };
   */

  @override
  State<StateDome> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<StateDome> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[100],
      child: Row(
        children: <Widget>[
          Text("$count"),
          TextButton(
            onPressed: () => {setState(() => count++)},
            style: ButtonStyle(
              // backgroundColor: MaterialStateProperty.resolveWith(
              //     (states) => Colors.green[100])
              backgroundColor: MaterialStateProperty.all(Colors.red),
            ),
            child: const Icon(
              Icons.add,
            ),
          ),
        ],
      ),
    );
  }
}
