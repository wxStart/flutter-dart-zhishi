void main() {
  /// Map 列斯js中的Object

  // 字面量声明
  Map map1 = <String, int>{
    '1': 2,
    'age': 18,
    // 2:3
  };

  print(map1); // {1: 2, age: 18}
  print(map1[1]); // null
  print(map1['1']); // 2

  // 构造函数声明
  var map2 = new Map();
  map2[1] = 12;
  map2['name'] = 'name';
  print(map2); // {1:12,name:'name'}

  // 判断key是否存在
  print(map2.containsKey(1)); // true
  print(map2.containsKey('1')); // flase

  // 赋值
  // 如果key不存在进行赋值，存在不进行任何操作
  map2.putIfAbsent(1, () => 1);
  print(map2); // {1: 12, name: name}
  map2.putIfAbsent('key1', () => 22);
  print(map2); //{1: 12, name: name, key1: 22}
  map2.putIfAbsent('key1', () => 23);
  print(map2); //{1: 12, name: name, key1: 22}

  // 获取所有的key和value
  print(map2.keys.toList()); // [1, name, key1]
  print(map2.values.toList()); //[12, name, 22]

  // 删除指定的key
  map2.remove(1);
  print(map2); //{name: name, key1: 22}

  // 根据条件删除
  map2.removeWhere((key, value) => (key == 'key1' && value == 23));
  print(map2); //{name: name, key1: 22} 因为key1 ==22 不等于23
  map2.removeWhere((key, value) => (key == 'key1' && value == 22));
  print(map2); //{name: name }
  
  /// 其他方法参考  https://api.dart.cn/stable/2.17.6/dart-core/Map-class.html
  var result =  map2.map((key, value) {
    print(key);
    print(value);
    return MapEntry(key, value);
  });
  print(result);
}
