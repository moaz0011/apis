import 'package:a5bar_el3alem/models/model_a5bar.dart';
import 'package:flutter/material.dart';
import '../provider/fetchData_provider.dart';
import '../widgets/catch_data.dart';
import '../widgets/darwer.dart';
import 'package:provider/provider.dart';
class splash extends StatelessWidget {
   splash({super.key});
  @override
  Widget build(BuildContext context) {
    Provider.of<GetData>(context,listen: false).fetchAlbum();
    return Scaffold(
      drawer: Draweer(),
      appBar: AppBar(
        title: Text('Bad News',style: TextStyle(fontSize: 25),),
        centerTitle: true,
        backgroundColor: Colors.black,), 
             body: Consumer<FetchDataProviders>(builder: (_, value, __) {
               return 
               value.loaded==false?
               Center(child: Text(value.a5bar.articles![0].title!),)
               :Center(child: CircularProgressIndicator());
             },)
    );
  }
}

// ApisData( url:'https://newsapi.org/v2/top-headlines?country=us&apiKey=ec29b0dd18f04052a600f2761ec7542f' )