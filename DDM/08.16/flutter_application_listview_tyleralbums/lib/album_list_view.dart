// ignore_for_file: prefer_const_constructors, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:flutter_application_listview_tyleralbums/album.dart';

class TylerAlbums extends StatefulWidget {
  const TylerAlbums({super.key});

  @override
  State<TylerAlbums> createState() => _TylerAlbumsState();
}

class _TylerAlbumsState extends State<TylerAlbums> {

  List<Album> albumList= [
    Album("Goblin", "2011", "assets/images/goblin.jpg"),
    Album("Wolf", "2013", "assets/images/wolf.jpg"),
    Album("Cherry Bomb", "2015", "assets/images/cherry_bomb.jpg"),
    Album("Flower Boy", "2017", "assets/images/flower_boy.jpg"),
    Album("IGOR", "2019", "assets/images/igor.jpg"),
    Album("CALL ME IF YOU GET LOST", "2021", "assets/images/call_me_if_you_get_lost.jpg"),
    Album("CALL ME IF YOU GET LOST: The Estate Sale", "2023", "assets/images/call_me_if_you_get_lost_the_estate_sale.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF8D8),
      appBar: AppBar(title: Text("Tyler, The Creator Discography"), centerTitle: true, backgroundColor: Color(0xFFA5EAEF)),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(thickness: 3,),
        itemCount: 7,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(albumList[index].title),
            subtitle: Text(albumList[index].release),
            trailing: Text((index + 1).toString()),
            leading: Image.asset(albumList[index].coverImgPath)
          );
        }
      ),
    );
  }
}