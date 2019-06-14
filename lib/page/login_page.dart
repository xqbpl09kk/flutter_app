import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }

}

class LoginState extends State<LoginPage>{
  final String testImageUrl = "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=234634259,4236876085&fm=27&gp=0.jpg" ;
  final String assertUrl = "/assets/images/close.png" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
         children: <Widget>[
//           Image.asset(assertUrl ,width :  40 , height :40 , fit: BoxFit.cover) ,
           Image.asset(
             'assets/images/close.png',
             width: 40,
             height: 40,
           ),
           Align(
             child : Image.asset('assets/images/close.png')
           )
         ],
      ),
    );
  }

}