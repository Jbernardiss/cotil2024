// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  const MyRadio({super.key});

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {

  String canSpeakRussian = "";
  String operador = "";
  bool playGuitar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Eu sei falar russo?"),
            Text("Да!"),
            Radio(
              value: "canSpeak",
              groupValue: canSpeakRussian,
              onChanged: (value) {
                canSpeakRussian = value!;
                setState(() {});
              },
            ),
            Text("Nyet.."),
            Radio(
              value: "cannotSpeak",
              groupValue: canSpeakRussian,
              onChanged: (value) {
                canSpeakRussian = value!;
                setState(() {});
              },
            ),
            Text("Escolhe um malucão"),
            RadioListTile(
              title: Text("Jäger"),
              subtitle: Text("German"),
              value: "jager",
              groupValue: operador, 
              onChanged: (value) {
                operador = value!;
                setState(() {});
              }
            ),
            RadioListTile(
              title: Text("Frost"),
              subtitle: Text("Canadian"),
              value: "frost",
              groupValue: operador, 
              onChanged: (value) {
                operador = value!;
                setState(() {});
              }
            ),
            SwitchListTile(
              title: Text("Do you play guitar?"),
              value: playGuitar, 
              onChanged: (value) {
                playGuitar = value;
                setState(() {});
              }
            ),
          ],  
        ),
      ) 
    );
  }
}