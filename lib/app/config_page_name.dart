//首页
import 'package:flutter/cupertino.dart';

import 'package:flutter_module/page/main_page.dart';
import 'package:flutter_module/page/list_page.dart';
import 'package:flutter_module/page/second_page.dart';
import 'package:flutter_module/page/login_page.dart';


//图片路径
String assetsImage = "asset/images/" ;
//主页
String main_page = "/main";
//第二个界面
String second_page = "/second";
//列表界面
String list_page = "/list";
//登录界面
String login_page = "/login" ;
//App的router
routeMap() {
  return <String, WidgetBuilder>{
    main_page: (BuildContext context) => MyHomePage(title: 'page A'),
    second_page: (BuildContext context) => SecondPage(),
    list_page: (BuildContext context) => ListPage(),
    login_page :(BuildContext context) => LoginPage()
  };
}
