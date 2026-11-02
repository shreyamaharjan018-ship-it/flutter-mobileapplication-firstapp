import 'package:smart_date_formatter/smart_date_formatter.dart';

import '../model/news.dart';

class Staticfile {
 // https://newsapi.org/v2/everything?q=apple&from=2026-10-13&to=2026-10-13&sortBy=popularity&apiKey=a25a0c0b883c4f389ff5c23da0f9dfea
  static String apikey ="a25a0c0b883c4f389ff5c23da0f9dfea";
  static String baseurl= "newsapi.org";
  static String path="/v2/everything";
  static Articles? article;
  static  String dateconverter (String date){
    if(date.isEmpty|| date == ""|| date == " "){
      return "";
    }
    try{
    DateTime formatt =DateTime.parse(date);
    var formatted =formatt.toReadable;
    return formatted.toString();
  }catch(e){
      return "";
  }
  }
}