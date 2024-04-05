// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: Text("The guy who made Graduation", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30,),
              SizedBox(height: 250, width: 250, child: Image.network("https://i.pinimg.com/736x/8f/12/9f/8f129f5f53c59e150832e1f1d6a0b701.jpg"),),
              SizedBox(height: 30,),
              SizedBox(
                height: 120, 
                width: 350, 
                child: Text(
                  "Hello people, it's Ye talking. I'm here to ask you to go to my site and buy something. Everything for U\$20.00. Go there now.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.chevron_right),
                    title: Text("aaaa"),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}