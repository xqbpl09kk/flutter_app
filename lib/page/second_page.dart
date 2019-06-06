import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Text("好"),
            Text("人"),
            Text("一"),
            Text("生"),
            Text("平"),
            Text("安"),
          ],
        ),
      ),
    );
  }
}
