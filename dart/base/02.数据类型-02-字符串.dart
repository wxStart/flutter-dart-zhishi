void main() {
  // 声明字符串
  String s1 = 's1内容';
  String s2 = "s2内容";
  String s3 = '''
asdsad
sadggasg
''';
  String s4 = """
asdsad\n
sadggasg
""";

  print(s3);

  // 字符串拼接
  print(s1 + s2);
  print("$s1$s2");

  // 字符串分割
  print(s1.split('')); //
  print(s1.split('') is List<String>); // true

  // 字符串去掉空格
  print("   abc   1   ".trimLeft()); // 去掉左侧空格
  print("   abc   1   ".trimRight()); // 去掉右侧空格
  print("   abc   1   ".trim()); // 去掉左右空格

  // 判断字符串是否为空
  print("".isEmpty); // true
  print("".isNotEmpty); //false

  //字符串替换
  print("a1b2c32d4e".replaceAll(RegExp(r"\d+"), '_')); //a_b_c_d_e

  // 查找字符串
  print("abcdahgf".contains('e')); // false 不包含e
  print("abcdahgf".indexOf('a')); // 0  返回左边第一个a的下标
  print("abcdahgf".lastIndexOf('a')); // 4  返回右侧第一个a的下标
  print("abcdahgf".indexOf('3')); // -1  没找到返回-1

  // 正则字符串
  var isPhone = RegExp(r'^1\d{10}$');
  print(isPhone.hasMatch("123456")); // false
  print(isPhone.hasMatch("12345623456")); // true
}
