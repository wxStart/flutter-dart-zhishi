class Phone {
  call(String number) {
    print('number $number');
  }

  Phone(){
    print('构造函数');
  }
}


// 把类当函数使用

void main() {
   Phone p = Phone();
  p('110');
  ///
  Phone()('110');
}
