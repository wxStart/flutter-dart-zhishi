// 函数

void main(List<String> args) {
  print('main');
  printFun(222);
}

// 函数声明不需要使用function
void printFun(int a) {
  var b = 'ccc';
  print('console.log $a $b');
}

// 单行注释

/**
 * 多行注释
 */

///文档注释，可以使用dartdoc转成文档，支持markdown 语法
///


//常量

// const age = 18;
// final Age = 18;

// const nowTime = DateTime.now(); // 不能讲运行时的值赋值给const
// final nowTime1 = DateTime.now(); //运行时的值赋值个 final
