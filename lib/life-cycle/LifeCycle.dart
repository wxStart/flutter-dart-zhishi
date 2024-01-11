import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  Index({super.key}) {
    print("构造函数");
  }

  @override
  State<Index> createState() {
    print('createState');
    return _IndexState();
  }
}

class _IndexState extends State<Index> {
  _IndexState() {
    print("State 构造");
  }

  int _count = 0;

  @override
  void initState() {
    print('State initState');
    super.initState();
  }

  @override
  void dispose() {
    print('State dispose');
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    print('State didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('State build   ');
    return Container(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              _count = _count + 1;
              setState(() {});
              //  setState 干了下方的事 调用 markNeedsBuild
              // context as StatefulElement;
              // context.markNeedsBuild();
            },
            child: const Icon(Icons.add),
          ),
          Text("$_count")
        ],
      ),
    );
  }
}

//! 创建阶段调用顺序

//*  构造方法
//* createState
//* State 构造
//* State initState
// State didChangeDependencies  // 改变依赖的（共享数据时候才会执行）
//* State build


//! 值改变的时候
// State build


//! 销毁的时候会调用  
// State dispose