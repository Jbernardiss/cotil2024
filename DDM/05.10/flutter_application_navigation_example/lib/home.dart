// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_navigation_example/favorite.dart';
import 'package:flutter_application_navigation_example/person.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> frasesMotivacionais = ["o amor é lindo", "ai zé da manga", "isso é legal"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo navegação"),
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => Person("Ninguém ta puro!")),
              );
            },
            icon: Icon(Icons.person),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => Favorite(frasesMotivacionais)),
              );
            },
            icon: Icon(Icons.favorite)
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/person');
              }, 
              child: Text("Pessoa"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/favorite');
              }, 
              child: Text("Favorito")
            )
          ],
        ),
      ),
    );
  }
}