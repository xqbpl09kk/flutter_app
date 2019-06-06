//首页
import 'package:flutter/cupertino.dart';

import 'package:flutter_module/page/main_page.dart';
import 'package:flutter_module/page/list_page.dart';
import 'package:flutter_module/page/second_page.dart';
//主页
String main_page = "/main";
//第二个界面
String second_page = "/second";
//列表界面
String list_page = "/list";

//App的router
routeMap() {
  return <String, WidgetBuilder>{
    main_page: (BuildContext context) => MyHomePage(title: 'page A'),
    second_page: (BuildContext context) => SecondPage(),
    list_page: (BuildContext context) => ListPage(),
  };
}
