// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_navigation_example/favorite.dart';
import 'package:flutter_application_navigation_example/home.dart';
import 'package:flutter_application_navigation_example/person.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  List<String> frasesMotivacionais = ["o amor é lindo", "ai zé da manga", "isso é legal"];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const Home(),
      routes: {
        '/': (context) => Home(),
        '/person': (context) => Person("Ninguém ta puro!"),
        '/favorite':(context) => Favorite(frasesMotivacionais),
      },
    );
  }
}

