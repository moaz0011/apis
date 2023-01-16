import 'package:a5bar_el3alem/models/class_of_country.dart';
import 'package:flutter/material.dart';
import 'catch_data.dart';
class Draweer extends StatelessWidget {
   Draweer({super.key});

List<Country> countrylist=[
  Country('Egypt','https://c4.wallpaperflare.com/wallpaper/554/488/986/africa-ancient-architecture-egypt-wallpaper-preview.jpg',
  'https://newsapi.org/v2/top-headlines?country=eg&apiKey=ec29b0dd18f04052a600f2761ec7542f'),
  Country('Argentina','https://pixelz.cc/wp-content/uploads/2018/11/argentina-flag-uhd-4k-wallpaper.jpg',
  'https://newsapi.org/v2/top-headlines?country=ar&apiKey=ec29b0dd18f04052a600f2761ec7542f'),
  Country('German','https://pixelz.cc/wp-content/uploads/2018/11/germany-flag-uhd-4k-wallpaper.jpg',
  'https://newsapi.org/v2/top-headlines?country=de&apiKey=ec29b0dd18f04052a600f2761ec7542f'),
  Country('USA','https://wallpaperaccess.com/full/265607.jpg',
  'https://newsapi.org/v2/top-headlines?country=us&apiKey=ec29b0dd18f04052a600f2761ec7542f'),
];
  @override
  Widget build(BuildContext context) {
     return 
   
   Drawer(
         child: Column(
          
           children: [
            Container(height: MediaQuery.of(context).size.height*0.2,
              width: double.infinity,
              color: Colors.black,
              child: Center(child: Text('Bad News',style: TextStyle(fontSize: 30,color: Colors.white),)),),
             ListView.builder(
              shrinkWrap: true,
               itemCount: countrylist.length,
               itemBuilder: (context, index) {
               return Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: InkWell(
                  onTap: () {
                     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ApisData( url: countrylist[index].urlAPI!,)),
  );
                  },
                   child: Row(children: [CircleAvatar(backgroundImage: NetworkImage(countrylist[index].urlImage!),),Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text(countrylist[index].name!),
                   )],),
                 ),
               );
             },),
           ],
         )
       
     );
  }
}
// child: Row(children: [CircleAvatar(backgroundImage: NetworkImage(flages[index]),),Text(names[index])],),