import 'package:shared_preferences/shared_preferences.dart';



getIntValue(String key ) async  {
  SharedPreferences sp = await SharedPreferences.getInstance() ;
  int value = sp.getInt(key?? 1) ;
}

setIntValue(int value , String key ) async{
  SharedPreferences sp = await SharedPreferences.getInstance() ;
  sp.setInt(key, value) ;
}