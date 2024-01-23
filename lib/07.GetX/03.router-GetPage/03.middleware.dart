import 'package:get/get.dart';
import 'package:flutter/material.dart';

// 可以做路由拦截
class MyMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    // return super.redirect(route);

    print("中间件 $route");
    // 可以在这里做一些判断跳转到其他页面
    // return RouteSettings(name: '/query?id=123&abc=我是拦截时候给的值');

    // return RouteSettings(
    //     name: '/other22', arguments: {"id": 2000}); // 这里让他跳转到404

    return null; // 跳转到之前的路由
  }
}
