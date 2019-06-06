import 'package:flutter/material.dart';
import 'package:flutter_module/page/main_page.dart';
import 'package:flutter_module/app/config_page_name.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: routeMap(),
    );
  }
}
