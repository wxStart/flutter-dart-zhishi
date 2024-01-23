import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'other_page.dart';
import '404_page.dart';

Map routes = {
  "/": (contxt) => const HomePage(),
  '/other': (contxt, {arguments}) => OtherPage(arguments: arguments),
};

// 可以在这里面鉴权
var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function? pageBuilder = routes[name];

  if (pageBuilder != null) {
    if (settings.arguments != null) {
      final Route route = CupertinoPageRoute(
          builder: (contxt) =>
              pageBuilder(contxt, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          CupertinoPageRoute(builder: (contxt) => pageBuilder(contxt));
      return route;
    }
  }
  final Route route = CupertinoPageRoute(builder: (contxt) => const NotFound());
  return route;
};
