
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyJogo extends StatefulWidget {
  const MyJogo({super.key});

  @override
  State<MyJogo> createState() => _MyJogoState();
}

class _MyJogoState extends State<MyJogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Text("Adversário"),


          ],
        ),
      ),
    );
  }
}