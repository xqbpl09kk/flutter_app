import 'package:flutter/material.dart';
import 'dart:async';

class CounterView extends StatefulWidget {

  final int counter ;
  final String preText  ;
  final Color textColor ;
  final Color backgroundColor ;
  final double textSize  ;

  const CounterView({
    @required this.counter,
    @required this.preText,
    this.textColor = Colors.white,
    this.backgroundColor = Colors.blue,
    this.textSize = 14 ,
  }) :super();


  @override
  State<StatefulWidget> createState() {
    return _CounterView(preText, counter, textColor, backgroundColor , textSize);
  }
}

class _CounterView extends State {
  int _counter = 0;
  String preText ;
  Color textColor;
  Color backgroundColor;
  double textSize  ;

  //从_counter转换而来
  String timeText = "";
  Timer timer;

  _CounterView(
      String preText, int leftTime, Color textColor, Color backgroundColor , double textSize )
      : super() {
    this._counter = leftTime;
    this.preText = preText;
    this.textColor = textColor;
    this.backgroundColor = backgroundColor;
    this.textSize = textSize ;
  }

  @override
  void initState() {
    super.initState();
    switchTimer();
  }

  void _incrementCounter() {
    setState(() {
      timeText = formatTime(_counter--);
    });
  }

  String formatTime(int count) {
    if (count > 24 * 3600) {
      //天
      int days = count ~/ (24 * 3600);
      return days.toString() + "天" + formatTime(count % (24 * 3600));
    } else {
      int hours = (count % (24 * 3600)) ~/ 3600;
      int minutes = (count % 3600) ~/ 60;
      int seconds = count % 60;
      return hours.toString().padLeft(2 , "0") +
          ":" +
          minutes.toString().padLeft(2 , "0") +
          ":" +
          seconds.toString().padLeft(2 , "0")  ;}
  }

  void switchTimer() {
    if (timer != null && timer.isActive) {
      timer.cancel();
    } else {
      timer = Timer.periodic(Duration(seconds: 1), (_) {
        _incrementCounter();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration:  BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all( Radius.circular(20.0)),
        ),
        child: Text("$preText $timeText",
            style:TextStyle(color: textColor, fontSize: textSize))
    );
  }
}
