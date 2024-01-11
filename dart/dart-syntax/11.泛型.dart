/// 泛型函数

/**
 * 之前的写法
 */
// String getData(String value){
//     return value;
// }

// void main(){
//     // print(getData(1));// 报错

// }

/**
 * 之前的写法
 */

T getData<T>(T value) {
  return value;
}

// 只约定参数类型，不约定返回类型的
getData1<T>(T value) {
  return value;
}

///  泛型类
///
class ClassName<T> {
  Set s = new Set<T>();

  void add(T value) {
    this.s.add(value);
  }
}

/// 泛型接口

abstract class ObjectCache {
  getByKey(key);

  setByKey(String key, Object val);
}

abstract class StringCache {
  getByKey(key);
  setByKey(String key, String val);
}

abstract class Cache<T> {
  getByKey(key);

  setByKey(String key, T val);
}

// 文件缓存
class FileCache<T> implements Cache<T> {
  @override
  getByKey(key) {
    return null;
  }

  @override
  setByKey(String key, T val) {
    print('文件缓存 key=${key}  vlaue:${val}');
  }
}

// 内存缓存
class MemoryCache<T> implements Cache<T> {
  @override
  getByKey(key) {
    return null;
  }

  @override
  setByKey(String key, T val) {
    print('内存缓存 key=${key}  vlaue:${val}');
  }
}

/// 泛型的参数限制
///
///
class BaseClass {}

class CBaseClass extends BaseClass {}

// 传入的类型是继承 BaseClass,限制了泛型的类型
class Foo<T extends BaseClass> {
  String toString() {
    return " of FOO $T";
  }
}

void main() {
  print(getData<int>(1));
  print(getData<String>('11'));

  ClassName nC = ClassName<int>();
  nC.add(1);
  print(nC.s);

  ClassName sC = ClassName<String>();
  sC.add('111');

  /// 字面量形式的泛型
  Set s = <int>{};

  FileCache fc = new FileCache<String>();
  // fc.setByKey('111', 1); // 报错
  fc.setByKey('11', '22');

  FileCache fcm = new FileCache<Map>();
  fcm.setByKey('11', {1: 21});

  var bcf = Foo<BaseClass>();
  print(bcf);

  // var bcf1 = Foo<Map>(); //报错
  var bcf2 = Foo<CBaseClass>();
  print(bcf2);

  var bcf3 = Foo();
  print(bcf3); // 默认就是 BaseClass
}
