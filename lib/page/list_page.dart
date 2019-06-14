import 'package:flutter/material.dart';
import 'package:flutter_module/app/config_page_name.dart';
import 'package:http/http.dart' as http;

class ListPage extends StatefulWidget {
  @override
  _ListPage createState() => _ListPage();
}

class _ListPage extends State<ListPage> {

  final String testImageUrl = "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=234634259,4236876085&fm=27&gp=0.jpg" ;
  int itemCount = 100 ;
  String errorMsg ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("列表界面"),
      ),
      body: ListView.builder(
        itemCount: itemCount,
        itemBuilder:(context , index ){
          if(index == 0){
            return ItemHeader()  ;
          } else if(index == itemCount -1){
            return Text("this is footer of this list") ;
          }else return GestureDetector(
              child : Column(
                children: <Widget>[
                  Image.network(testImageUrl ,width :  40 , height :40 , fit: BoxFit.cover) ,
                  Text("title"),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "this is the text intput hint " ,
                      errorText: errorMsg
                    ),
                    onSubmitted: (String text ){
                      setState(() {
                        if(isEmail(text)){
                          errorMsg = "this is not e email " ;
                        }else {
                          errorMsg = null ;
                        }
                      });
                    },
                  ),
                ],
              ),
              onTap: (){
                setState(() {
                  Navigator.of(context).pushNamed(login_page);
                  itemCount -= 20 ;
                });
                print("this tapped !") ;
              },
          );
        } ,
//        semanticChildCount: 100,
//        children: _getListWidgets(),
      ),
    );
  }

  bool isEmail(String text ){
    String emailRegexp =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$' ;
    RegExp regExp = RegExp(emailRegexp) ;
    return regExp.hasMatch(text) ;
  }

  fetchData() async{

  }
}

class RequestService {
  Future<Map> post(String url , Map param) async{
    Map headerMap = await _headerInfo(param) ;

  }


  // ignore: missing_return
  Future <Map> _headerInfo(Map parameter) async{
  }

}




class ItemHeader extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ItemHeader();
  }

}

class _ItemHeader extends State<ItemHeader>{

  final String testImageUrl = "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=234634259,4236876085&fm=27&gp=0.jpg" ;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(testImageUrl),
    );
  }

}
