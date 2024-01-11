void main() {
  List nums = [1, 2, 3, 4];
  //
  print('for 循环');
  for (var i = 0; i < nums.length; i++) {
    print(nums[i]);
  }
  //
  print('for in');
  for (var element in nums) {
    print(element);
  }
  print('forEach');
  nums.forEach((element) {
    print(element);
  });

  var maps = nums.map(((e) {
    return e * e;
  }));
  print(maps);
  print(maps.toList());

  bool isOdd(e) => e % 2 == 1;

  List oddNums = nums.where(isOdd).toList();
  print('oddNums $oddNums');

  bool hasOdd = nums.any(isOdd);
  print('含有奇数么 $hasOdd');

  bool allOdd = nums.every(isOdd);
  print('都是奇数么 $allOdd');

  // 扩展  数组降维 降一次维度
  var pairs = [
    [
      [1],
      2
    ],
    [3, 4]
  ];
  print(pairs.expand((element) => element).toList()); //   [[1], 2, 3, 4]

  //折叠 类似reduce
  print([1, 2, 3].fold(
      0,
      (previousValue, element) =>
          ((previousValue as num) + element))); // 6   0+1+2+3
}
