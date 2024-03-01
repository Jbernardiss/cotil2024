// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyCat extends StatelessWidget {
  const MyCat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade200,
      body: Center(
        child: Column(
          children: [
            DecoratedBox(
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 5,
                  style: BorderStyle.solid,
                  color: Colors.white,
                ),
                color: Colors.lightBlue.shade200,
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                child: Text("Cats"),
              )
            )
          ],
        )
      ),
    );
  }
}