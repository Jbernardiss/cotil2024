// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade100,
      appBar: AppBar(
        title: Text("Exercício 1", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.orange.shade800,
        centerTitle: true,
      ),
      body: Center(child: Column(children: [
        SizedBox(height: 20,),
        Text("Rato", style: TextStyle(backgroundColor: Colors.orange, fontSize: 30),),
        SizedBox(height: 20,),
        Text("Arábico", style: TextStyle(backgroundColor: Colors.amber.shade600, fontSize: 30),),
        SizedBox(height: 20,),c kn 
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Passa-te", style: TextStyle(backgroundColor: Colors.amber.shade500, fontSize: 30),),
            SizedBox(width: 20,),
            Text("A", style: TextStyle(backgroundColor: Colors.amber.shade400, fontSize: 30),),
            SizedBox(width: 20,),
            Text("Bufa", style: TextStyle(backgroundColor: Colors.amber.shade300, fontSize: 30),)
          ],),
        SizedBox(height: 20,),
        Text("Aceitas?" ,style: TextStyle(backgroundColor: Colors.amber.shade200, fontSize: 30),),
        SizedBox(height: 20,),
        SizedBox(height: 100, width: 100, child: Image.network("https://imageproxyb.ifunny.co/crop:x-20,resize:640x,quality:90x75/images/b40e595bea22dfbfc098344b534741c46f918e58ae52b70ed542e1ca5a3db240_1.jpg"),),        
      ]),),
    );
  }
}