void main() {
  //Runes: 是一个32位字符对象，它可以把文字转成符号表情 或者特定的文字
  Runes r = Runes('\u{1f44d}');
  print(r.string); // 👍

  print(r.string.length); //2  因为是32位，在dart中16位是代表1（length）
  print(r.string.runes.length); // 1

  // Symbol ： 用#开头标识

  Symbol a = #aaa;
  print(a); // Symbol("aaa")
  var b = new Symbol('aaa');
  print(b); // Symbol("aaa")
  print(b == a); //true

  //  dynamic: 动态类型
}
