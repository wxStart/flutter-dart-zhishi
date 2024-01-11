### 资源网站

#### 官网

1. [英文](https://dart.dev/)
2. [中文](https://dart.cn)

#### 在线运行

[代码调试](https://dartpad.cn/)

#### 生态

[资源包](https://pub.dev/)

### 基础

#### 变量声明

1. 用 `var` 声明的变量，数据类型是动态的;
2. 用 `dynamic`声明的变量，数据类型是动态的；
3. 变量的默认值是 `null`;
4. 变量的值不会进行隐式转换（null 不会自动转为 false）
5. 声明常量使用`const`和 `final`;
6. 不能把运行时的值分配给 const，但是可以给 final;

#### 数据类型

1. 数字类型：`num`，分为 `int` 和 `double`
2. 字符串：`String`，可用单引号，双引号，三引号（三个引号可以包含换行符）
3. 布尔值：`bool`, 对变量进行判断时候，要显式地检查布尔值
4. 数组类型：`List`, 字面量声明，构造函数方式
5. Set 类型：`Set`,字面量声明，构造函数方式
6. Map 类型：`Map`，类似 js 中的对象（Object）
7. 其他类型：`Symbol`、`Runes` 和 `dynamic`

#### 运算符

1. 地板除： `~/`
2. 类型判断运算符: `is`是， ` is!`不是
3. 避空运算符： `??` `??=`
4. 条件属性访问： `?.` 属性存在才访问
5. 级联运算符：`..`返回访问对象

#### 函数

1. 返回值和声明的返回值类型要相同
2. 具名函数
3. 匿名函数
4. 箭头函数，只是简单的函数，没有 js 中的绑定 this
5. 立即执行函数
6. 异步函数 `Future`

##### 函数参数

1. 可选参数
2. 命名参数
3. 函数参数：把函数作为参数传递给一个函数

##### 作用域和闭包

1. 作用域与闭包和 js 的是一样

##### 异步函数

1. `Future`类似 js 中的`Promise`
2. 也可以使用 `async` 和 `await`

#### 类 class 和对象+

##### 构造函数

1. 普通构造函数，类里面有一个和类型相同的函数，在实例化的时候就会被执行；
2. 命名构造函数， 给类定义了一个方法，通过这个方法去实例化对象，提高代码清晰度。
3. 常量构造函数，如果类生成的对象不会改变了们可以通过常量构造函数,在 flutter 中大量使用
4. 工厂构造函数，工厂构造函数返回的结果会作为实例化对象

##### 其他概念

1. 【私有属性或者方法】 以`_`开头，算是本文件的私有。算是模块属性，仅当前模块才可以访问
2. 【`getter`和`setter` 修饰符】
3. 【初始化列表】 初始化属性的值
4. 【`static` 修饰符】 通过类访问的属性或者方法
5. 【元数据修饰 `@`】相当于给代码标记一些额外的信心； `@override` 重写、`@required`必填 、 `@deprecated`弃用（表示此方法后期版本会被弃用，谨慎使用被标记的方法）
6. 【继承】 `extends` 和 `super(访问父类)`
7. 【`abstract`抽象类】 `abstract`修饰的类 ,抽象类不能被实例，可以被继承，也可以充当接口.
8. 【使用接口`implements`】类通过接口约定，所以要实现约定类里面的所有属性和方法

#### 泛型相关知识

1. 泛型函数
2. 泛型类
3. 泛型接口
4. 泛型的约束：限制泛型的范围

#### dart 生态

1. 通过`library`来声明库
2. 通过`import`来引入库
3. 引入部分库: 包含引入`show`,排除引入`hide`
4. 通过`as` 作为起别名前缀来避免库的同名冲突
5. 通过`part`和`part of`来组装库： 分库里面用`part of`与主库建立联系,主库里面使用`part`引入分库

##### 自定义库
每一个单独的dart文件都是一个默认的库。

##### 系统库
dart核心库等
##### 引入三方库



### 进阶
#### 类与对象
##### extension on
给类扩展一些内容，方法或者是属性
``` 
extension ExtensionString on String{
   <!-- 扩展内容 -->
}
```
##### call
在类中声明`call`方法,当把类的实例用作函数时候，就会自定调用call方法


##### noSuchMethod
当我们调用一个类的未定方法时候，Dart就会自动调用`noSuchMethod`,
###### 使用前提
1. 类中声明了noSuchMethod，（否则调用默认的noSuchMethod）
2. 实例化对象必须使用 dynamic 来修饰
3. 调用未定义的方法

##### hashCode
1. 每个对象的唯一标识
2. 是一串数字
3. 可以通过hashCode来判断两个对象是否相等

##### typedef
自定义类型（类型别名）
###### 语法
` typedef function_name(params) `声明函数类型     
` typedef variable_name =List<int> ` 定义函数类型（2.13+）


#### 异步编程
##### 单线程
和js的逻辑一样   
1. 主线程，微任务和宏任务   
2. 微任务队列：主要是通过 `scheduleMicrotask`来调度   
3. 事件队列（宏任务）：I/O、 Timer、绘制事件等    

##### 多线程 Isolate
1. 线程是以隔离的方式存在
2. 每个线程都是独立的，私有内存块（多线程不共享内存）  
3. 没有共享内存，就不需要竞争资源 ，就不要需要锁

###### 线程中方法
1. 创建线程：`Isolate.spawn()` 
2. 创建线程: `Isolate.spawnUri()`  根据url文件创建、
3. 暂停线程: `Isolate.pause()`
4. 杀死线程： `Isolate.kill()`
######  线程通信

1. 多线程通信方式 ：Port
2. `ReceivePort`类： 初始化接受端口，创建发送端口，接受消息 监听消息 关闭端口
3. `SendPort`类：将消息发送个ReceivePort
4. 单向通信  双向通信  

##### Future
封装一些异步任务，类似Promise；    
三种状态 未完成（Uncompleted）、已完成，并且返回数据（Completed with data）、已完成返回报错（Completed with error）  
1. Future   创建
2. Future.error  跑错
3. Future.delayed   延迟
4. then
5. catchError
6. whenComplete

###### Future 执行顺序
1. Future默认是异步任务，会被放到事件队列中
2. Future.sync() 同步任务，同步执行，不会被丢到异步队列中
3. Future.microtask() 微任务，会放到微任务队列中
4. Future.value(val)  val 是常量就是微任务，如果是异步就按照异步的逻辑，异步是微任务就是微任务，是宏任务就是宏任务。  


###### Futrue 多任务

1. Future.any(futures) 返回最先完成的Future结果
2. Future.wait(futures)  等待所有的都执行完成 返回结果
3. Future.doWhile(action)  按照条件遍历执行多个Future  异步循环  递归时候可以使用
4. Future.forEach(elements,action) 遍历给定集合，根据集合元素执行过个future

###### FutureBuilder  Fultter Sdk中提供的异步组件

1. future
2. initialData
3. builder(context. snapshot): 
snapshot.connectionState 描述连接的状态 none 未连接；waiting连接异步任务; active正在交互；done异步完成.   
snapshot.data (Completed with data)    
snapshot.hasError  (Completed with error)    

#####  Stream
Stream是异步数据流，可以连续不断地返回多个数据
1. listen 进行数据监听
2. error 接受失败的状态
3. done 接受结束的状态

######  Stream 的类型
1. Single-Subscription 单一订阅：数据流只能被listen 一次（多次会报错）   
 StreamController().stream 或者 Stream.fromIterable
2. Broadcast 广播:  可以被监听多次
 StreamController.broadcast() 或者 stream.asBroadcastStream() 
###### Stream类
1. Stream.fromFuture();
2. Stream.fromFutures()
3. Stream.fromIterable()
4. Stream.periodic()

###### 操作流
1. take(count) 
2. takeWhile()
3. where()
4. distinct()
5. skip()
6. skipWhile()
7. map()
8. expand()
9. toSet() | toList() | toString
10. length  | first | last


###### StreamBuilder  Fultter Sdk中提供的异步组件

1. stream
2. initialData 初始化数据
3. builder(context. snapshot): 
snapshot.connectionState 描述连接的状态 none 未连接；waiting连接异步任务; active正在交互；done异步完成.   
snapshot.data (Completed with data)    
snapshot.hasError  (Completed with error) 


#### 生成器 Generator

##### 生成器的分类
1. 同步生成器： sync + yield;          
a. 使用 `sync*`， 返回的是 `Iterable`对象    
b. `yield`会返回`moveNext`为 `true`,并等待moveNext指令   
2.异步生成器 ：async + yield     
a. 使用`async*`，返回的是 `Stream`对象    
b. `yield`不用暂停，数据以流的方式一次性推送    
3. 递归生成器: yield*  
a.`yield*` 是指针，指向递归函数



### 语法文档说明参考 本工程的   dart-syntax文件夹
