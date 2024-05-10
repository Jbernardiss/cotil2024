// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
      appBar: AppBar(
        title: Text("Álbums"),
        centerTitle: true,
        backgroundColor: Colors.brown.shade900,
      ),

      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/vinyl.png'),

            
          ],
        ),
      ),
    );
  }
}