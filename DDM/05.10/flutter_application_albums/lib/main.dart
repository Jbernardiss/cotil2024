// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_albums/album.dart';
import 'package:flutter_application_albums/albumExhibit.dart';
import 'package:flutter_application_albums/home.dart';
import 'package:flutter_application_albums/track.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<Track> yeTracklist = [
    Track("I Though About Killing You", "4:34"),
    Track("Yikes", "3:08"),
    Track("All Mine", "2:25"),
    Track("Wouldn't Leave", "3:25"),
    Track("No Mistakes", "2:03"),
    Track("Ghost Town", "4:31"),
    Track("Violent Crimes", "3:35")
  ];

  List<Track> tdsotmTracklist = [
    Track("Speak to Me / Breath", "3:58"),
    Track("On the Run", "3:35"),
    Track("Time", "7:05"),
    Track("The Great Gig in the Sky", "4:44"),
    Track("Money", "6:23"),
    Track("Us and Them", "7:50"),
    Track("Any Colour You Like", "3:26"),
    Track("Brain Damages", "3:48"),
    Track("Eclipse", "2:01"),
  ];

  List<Track> inUteroTracklist = [
    Track("Serve the Servants", "3:37"),
    Track("Scentless Apprentice", "3:48"),
    Track("Heart-Shaped Box", "4:41"),
    Track("Rape Me", "2:50"),
    Track("Frances Farmer Will Have Her Revenge On Seattle", "4:10"),
    Track("Dumb", "2:32"),
    Track("Very Ape", "1:56"),
    Track("Milk It", "3:55"),
    Track("Pennyroyal Tea", "3:37"),
    Track("Radio Friendly Unit Shifter", "4:51"),
    Track("Tourette's", "1:35"),
    Track("All Apologies", "3:51"),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => Home(),
        '/album/ye': (context) =>AlbumExhibit(Album("Ye", "Kanye West", yeTracklist, 'assets/images/ye.jpg') ),
      },
    );
  }
}
