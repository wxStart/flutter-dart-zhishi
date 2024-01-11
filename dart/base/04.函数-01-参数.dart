void main(List<String> args) {
// 可选参数
  String userInfo(String name, [int age = 1]) {
    return "我是${name};年龄$age";
  }

  print(userInfo('wx'));
  print(userInfo('wx', 12));

// 命名参数
  String userInfo1(String name, {int age = 12}) {
    return "我是${name};年龄$age";
  }

  print(userInfo1('wx'));
  // 命名参数，在调用的时候需要传入命名参数的名字
  print(userInfo1('wx', age: 20));
}
