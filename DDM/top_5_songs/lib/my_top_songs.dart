
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyTop5Songs extends StatelessWidget {
  const MyTop5Songs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Top 5 Songs'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(child: Column(children: [
        Text('Vultures', style: TextStyle(color: Colors.white)),
        Text('Sweet Child of Mine', style: TextStyle(color: Colors.white)),
        Text('Smells Like Teen Spirit', style: TextStyle(color: Colors.white)),
      ],)),
    );
  }
}