void main() {
  //声明  字面量

  List l1 = [1, 2, '3', '4'];

  List l2 = <int>[1, 2, 3, 4, 5]; // 只能是数字的数组

  List<int> l3 = [1, 2, 3, 4, 5]; // 只能是数字的数组

  //声明  构造函数
  // / 声明了一个允许扩展内容的 数字类型数组
  List l4 = new List<int>.empty(growable: true); // growable 是否可以往空列表里面添加内容
  l4.add(1);

  List l5 = new List<String>.filled(5, 'ss');
  print(l5); // [ss, ss, ss, ss, ss]

  List l8 = [...l5];
  print(l8); // [ss, ss, ss, ss, ss]

  var l9;
  List l10 = [1, ...?l9];

  print(l10); // [1]

  // 数组的属性和方法
  // 列表翻转
  var ll1 = [1, 2, 3, 4, 5];
  print(ll1.reversed); // (5, 4, 3, 2, 1)  //! 已经不是一个列表了
  var ll2 = ll1.reversed.toList();
  print(ll2); // [5, 4, 3, 2, 1]

  // 添加元素
  ll2.addAll([4, 5, 6]);
  print(ll2); // [5, 4, 3, 2, 1, 4, 5, 6]

  // 删除元素
  ll2.remove(5); // 删除左边的5
  print(ll2); // [4, 3, 2, 1, 4, 5, 6]

  // 根据下标删除元素
  ll2.removeAt(1);
  print(ll2); // [4, 2, 1, 4, 5, 6]

  // 在指定的位置插入元素
  ll2.insert(1, 8);
  print(ll2); // [4, 8,2, 1, 4, 5, 6]

  //清空元素
  ll2.clear();
  print(ll2); // []

  // join
  print([1, 2, 4].join('-')); // 1-2-4

  // forEach 遍历
  // map 返回等长的数组
  // where 过滤作用 返回符合条件的数据
  // any  有一个数据满足条件就返回true
  // every 每一个数据都没满足条件才返回true
  // fold  类似reduce
}
