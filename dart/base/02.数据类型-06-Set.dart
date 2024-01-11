void main() {
  // 声明式的
  Set set1 = <int>{1, 2, 3, 4, 3};
  print(set1); // {1, 2, 3, 4} //重复的3 没有了

  // 构造函数
  Set<String> set2 = new Set<String>();

  set2.add('苹果');
  set2.add('苹果');
  set2.add('菠萝');
  print(set2); // {苹果, 菠萝}   // 重复的苹果 没有了
  print(set2.toList()); //[苹果, 菠萝]

  print([1, 2, 3, 3, 4].toSet()); // {1, 2, 3, 4}  // 重复的3 没有了

  //! 集合的函数
  var s1 = {1, 2, 3}, s2 = {1, 2, 4, 5};

  //交集
  print(s1.intersection(s2)); // {1, 2}

  //并集
  print(s1.union(s2)); // {1, 2, 3, 4, 5}
  // 求差集  第一个里面有 第二个里面没有
  print(s1.difference(s2)); // {3}

  // 返回第一个元素
  print(s1.first); // 1
  // 返回最后一个元素
  print(s1.last); // 3
}
