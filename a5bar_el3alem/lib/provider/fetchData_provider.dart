import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import '../models/model_a5bar.dart';
class FetchDataProviders extends ChangeNotifier{

  setState(){
   notifyListeners();}
    A5bar a5bar=A5bar();
    bool loaded=true;
    late int len ;
    Future fetchAlbum()async{
    loaded = true;
    var data = await http.get(Uri.parse('https://newsapi.org/v2/top-headlines?country=us&apiKey=ec29b0dd18f04052a600f2761ec7542f'));
    len = jsonDecode(data.body)["articles"].length;
    print(len);
    a5bar = A5bar.fromJson(jsonDecode(data.body));
    loaded = false;
    setState();
  }
}
