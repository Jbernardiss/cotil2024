// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

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
              SizedBox(height: 250, width: 250, child: Image.network("https://pbs.twimg.com/media/GBFblNPXwAEc2Er.jpg:large"),),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("YZY STORE", style: TextStyle(color: Colors.white),), style: ElevatedButton.styleFrom(backgroundColor: Colors.black)),
                  ElevatedButton(onPressed: () {}, child: Text("YZY APP", style: TextStyle(color: Colors.white),), style: ElevatedButton.styleFrom(backgroundColor: Colors.black),)
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}