import 'package:http/http.dart' as http;
import 'dart:convert';
class NetworkHelper{
  NetworkHelper(this.url);
  final String url;
  Future getdata() async{
    http.Response response= await http.get(url);

    if(response.statusCode==200)
    {   String Data=response.body;
        return( jsonDecode(Data));

    }
    else{
      print(response.statusCode);
    }



    }




}