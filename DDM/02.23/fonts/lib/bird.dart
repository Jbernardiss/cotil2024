
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PassaroPaunaKara extends StatelessWidget {

  final figuraBird = SizedBox(
    height: 250, 
    child: Image.asset("./assets/images/vulture.jpg", height: 250,)
  );

  final textoBird = Text(
    "VULTURE", 
    style: TextStyle(
      fontFamily: "UnifrakturCook", 
      fontSize: 24, 
      color: Colors.white
    )
  );

  PassaroPaunaKara({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200,),
            figuraBird,
            textoBird,
          ],
        ),
      ),
    );
  }
}