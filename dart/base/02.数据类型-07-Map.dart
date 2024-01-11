void main() {
  // 声明式的
  Map<String, String> map1 = {"1": "123", "a": "bb"};
  print(map1); // {1: 123, a: bb}

  // 构造函数

  var map2 = Map<String, String>();

  map2['name'] = '123';

  // 判断是否存
  print(map2.containsKey('aaa'));
  print(map2.containsKey('name'));

  // 赋值
  // 如果不存在，才赋值

  map2.putIfAbsent('aaa', () => '1234'); // aaa的值是1234
  map2.putIfAbsent('aaa', () => 'aaa'); // aaa没有被改变
  print(map2); //{name: 123, aaa: 1234}

  // 获取Map中所有的key
  print(map2.keys); //(name, aaa)
  // 获取Map中所有的value
  print(map2.values); // (123, 1234)

  // 根据条件删除
  map2.removeWhere((key, value) => key == 'aaa');
  print(map2); //{name: 123}
}
