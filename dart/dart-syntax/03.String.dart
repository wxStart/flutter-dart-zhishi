void main() {
  // 声明字符串

  // 使用单引号声明
  var str1 = '121212';
  print(str1);

  // 使用双引号声明
  String str2 = "哈哈沙发";
  print(str2);

  //多行字符串 三个单引号或者三个双引号
  String str3 = '''
    SDAFHDSJKFH

    DFSADSA4478

464''';

  print(str3);

  //  常见操作

  // 字符串拼接 +  或者$ 符号
  print('$str3${str1 + str2}');

  // 字符串分隔
  print('ssaf'.split("")); // ['s','s','a','f']

  // 字符串去掉首尾空格
  print('   ss   '.trim()); // 'ss'

  // 判断字符串是否为空
  print(''.isEmpty); // true
  print(''.isNotEmpty); //false

  // 字符串替换
  print('sssabcsss'.replaceAll('s', '1')); // 111abc111
  // 正则替换字符串
  print('a1b22c3d5'.replaceAll(RegExp(r'\d+'), '')); // abcd

  // 查找字符串
  print('ASDSA1'.contains('1')); // true; 字符串中是否包含1

  // 定位字符串
  print('ss1234234'.indexOf('23')); // 3  从开头查找23开始为位置
  print('ss1234234'.lastIndexOf('23')); //6  从结尾查找23开始的位置

  // 字符串转数字
  print(int.parse('12'));
  
  //字符串截取
  print('abcdfe'.substring(1,3)); // bc // 含头不含尾
}
