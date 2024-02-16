// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class MySongs extends StatelessWidget {
  const MySongs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Songs", style: TextStyle(color: Colors.white)), 
        backgroundColor: Colors.deepPurple.shade900,
      ),
      backgroundColor: Colors.purple.shade50,
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepPurple.shade300,
        height: 60,
        child: const Text('I made truin', 
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(child: Column(children: [
        SizedBox(height: 20,),
        Text("Hihi"),
        Text("Haha"),
        Text("Hehe"),
        SizedBox(height: 400, width: 400, child: Image.network('https://yt3.googleusercontent.com/ytc/AIf8zZQPcK9jlrMY8NW0MZTaeWfr1byo3BbEH4z8cfGW0g=s176-c-k-c0x00ffffff-no-rj'),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("hihiha"),
            SizedBox(width: 40,),
            Text("Grrrrr"),
            SizedBox(width: 40,),
            Text("huhuhuhuii"),
          ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://yt3.googleusercontent.com/ytc/AIf8zZQPcK9jlrMY8NW0MZTaeWfr1byo3BbEH4z8cfGW0g=s176-c-k-c0x00ffffff-no-rj'),
            SizedBox(width: 40),
            Image.network('https://yt3.googleusercontent.com/ytc/AIf8zZQPcK9jlrMY8NW0MZTaeWfr1byo3BbEH4z8cfGW0g=s176-c-k-c0x00ffffff-no-rj'),
          ],
        )
      ],)),
    );
  }
}