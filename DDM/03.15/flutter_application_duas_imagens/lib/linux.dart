// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class LinuxGang extends StatefulWidget {
  const LinuxGang({super.key});

  @override
  State<LinuxGang> createState() => _LinuxGangState();
}

class _LinuxGangState extends State<LinuxGang> {

  String escolha = "Linus Torvalds";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              child: Image.asset('assets/images/linusTorvalds.jpg', width: 300, height: 300,),
              onTap: () {
                escolha = "Linus Torvalds";
                setState(() {});
              },
            ),

            GestureDetector(
              child: Image.asset('assets/images/richardStallman.jpg', width: 300, height: 300,),
              onTap: () {
                escolha = "Richard Stallman";
                setState(() {});
              },
            ),

            Text(escolha),
          ],
        ),
      ),
    );
  }
}