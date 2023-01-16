import 'dart:convert';
import 'package:a5bar_el3alem/models/model_a5bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
class ApisData extends StatefulWidget {
String url;
   ApisData ({super.key, required this.url});


  @override
  State<ApisData> createState() => _ApisDataState();
}

class _ApisDataState extends State<ApisData> {
  late int i=2;
  @override

  bool loaded=false;
  A5bar a5bar=A5bar();
  late int len ;
  var data;
  

  @override
  Widget build(BuildContext context) {
    
    return loaded == false
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1.2,
                    mainAxisSpacing: 10),
                itemCount: a5bar.articles!.length,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
  ),
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              a5bar.articles![index].title!,
                              style: TextStyle(color: Colors.red),
                            ),
                           a5bar.articles![index].description!= null? Text(
                              a5bar.articles![index].description!,
                              style: TextStyle(color: Colors.black),
                            ):Text(''),
                            a5bar.articles![index].urlToImage != null
                                ? Flexible(
                                    child: Image.network(
                                    a5bar.articles![index].urlToImage!,
                                    fit: BoxFit.cover,
                                  ))
                                : Center(child: Text("IMAGE NOT FOUND")),
                          ],
                        ),
                      ),
                    ),
                  );
                }))
            : Center(child: CircularProgressIndicator());
  }
}