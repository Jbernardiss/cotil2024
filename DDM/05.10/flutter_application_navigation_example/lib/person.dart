// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Person extends StatefulWidget {
  String phrase="";
  Person(this.phrase, {super.key});

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pessoa"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          children: [
            Text(widget.phrase),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              child: Text("Voltar"),
            )
          ],
        ),
      )
    );
  }
}