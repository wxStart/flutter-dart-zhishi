void main() {
  // 字面量声明
  List l1 = [1, 2, 3, 'ss'];

  print(l1);

  // 字面量限定类型
  List l2 = <int>[1, 2, 3];
  print(l2);

  //  构造函数的形式
  List l3 = new List.empty();
  print(l3);
  // l3.add(1); // 报错

  List l4 = new List.empty(growable: true);

  l4.add(1);
  print(l4);

  List l5 = new List.filled(10, 3);
  print(l5);

  List l6 = [0, ...l5];
  print(l5);

  var l7;
  var l8 = [0, ...?l7];
  print(l8);

  // 返回长度
  print(l5.length);

  // 数组翻转
  print(l1.reversed); // (ss, 3, 2, 1)
  print(l1.reversed.toList()); // [ss, 3, 2, 1]

  // 添加元素
  l8.addAll([2, 3, 4, 2, 1, 2]); // concat
  print(l8); // [0,2,3,4,2,1,2]

  // 删除元素删除第一个2
  l8.remove(2);
  print(l8); // [0,3,4,2,1,2]
  // 删除最后一个
  var result = l8.removeLast(); // pop
  print(result); // 2
  print(l8); // [0,3,4,2,1]
  // 删除下标
  l8.removeAt(1);
  print(l8); // [0,4,2,1]

  // 在指定的位置开始插入插入
  l8.insert(1, 6);
  print(l8); // [0,6,4,2,1]
  l8.insertAll(1, [2, 3]);
  print(l8); // [0,2,3,6,4,2,1]

  // 清空数组

  l8.clear();
  print(l8); // []
  print(l8.length); // 0
  print(l8.isEmpty); // true;

  // 合并元素
  print([1, 2, 3].join('-')); // 1-2-3

  // 遍历
  [1, 2, 3].forEach((element) {
    print(element);

    /// 1
    /// 2
    /// 3
  });
  // map 返回等长数组
  var mapList = [1, 2, 3].map((e) => e * e);
  print(mapList); //(1, 4, 9)
  print(mapList.toList()); //[1, 4, 9]

  //where 过滤操作
  var fillterList = [10, 11, 2].where((element) => element > 10);
  print(fillterList); //(11)
  print(fillterList.toList()); //[11];

  //  any  类似于some 有满足条件的为真
  var anyResult = [10, 11, 2].any((element) => element > 10);
  print(anyResult); //true
  // every 所有的都要满足条件才是真
  var everyResult = [10, 11, 2].every((element) => element > 10);
  print(everyResult); //false

  // 扩展 expand  数组降为
  var a = [
    [1, 2],
    [3, 4]
  ];
  var b = a.expand((element) => element).toList();
  print(b); //[1,2,3,4]
  // fold  类似于reduce函数
}
