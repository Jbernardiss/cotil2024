
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, unused_import

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_albums/album.dart';
import 'package:flutter_application_albums/track.dart';

class AlbumExhibit extends StatefulWidget {
  Album album = Album("", "", [], "");
  bool whiteText = false;
  AlbumExhibit(this.album, this.whiteText, {super.key});

  @override
  State<AlbumExhibit> createState() => _AlbumExhibitState();
}

class _AlbumExhibitState extends State<AlbumExhibit> {
  

  
  Row printTrack(Track track) {
    return Row(
      
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Text(track.title),
        Text(track.length)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    Color textColor = Colors.black;

    if(widget.whiteText == true) {
      textColor = Colors.white;
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.album.albumCoverPath),
            fit: BoxFit.cover,
          )
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
          child: Center(
            child: Column(
              children: [
                AppBar(
                  title: Text(widget.album.title, style: TextStyle(color: textColor),),
                  backgroundColor: Colors.transparent,
                ),

                Text(widget.album.title, style: TextStyle( fontSize: 40, color: textColor,), textAlign: TextAlign.center, ),
                Text("by ${widget.album.author}", style: TextStyle( fontSize: 24, color: textColor), textAlign: TextAlign.center,),

                Padding(
                  
                  padding: EdgeInsets.all(10),
                  child: Container(

                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10)
                    ),

                    padding: EdgeInsets.all(10),

                    child: ListView.builder(
                    
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                    
                      itemCount: widget.album.tracklist.length,
                      itemBuilder: (context, index) {
                          
                        return Row(
                        
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        
                          children: [
                            Text(widget.album.tracklist[index].title, style: TextStyle(fontSize: 16),),
                            Text(widget.album.tracklist[index].length, style: TextStyle(fontSize: 16),),
                          ],
                        );
                      }
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}