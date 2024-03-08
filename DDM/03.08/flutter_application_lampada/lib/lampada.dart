// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Lampada extends StatefulWidget {
  const Lampada({super.key});

  @override
  State<Lampada> createState() => _LampadaState();
}

class _LampadaState extends State<Lampada> {

  Image lampadaOn = Image.asset("assets/images/lampadaOn.jpg");
  Image lampadaOff = Image.asset("assets/images/lampadaOff.jpg");
  String btnTextOff = "Acender!";
  String btnTextOn = "Apagar!";
  String imgCaptionOff = "Lampada Apagada";
  String imgCaptionOn = "Lampada Acesa";
  late Image lampadaAtual = lampadaOff;
  late String btnText = btnTextOff;
  late String imgCaption = imgCaptionOff;

  void mudaEstado() {
    if(lampadaAtual == lampadaOff) {
      lampadaAtual = lampadaOn;
      btnText = btnTextOn;
      imgCaption = imgCaptionOn;
    } else if(lampadaAtual == lampadaOn) {
      lampadaAtual = lampadaOff;
      btnText = btnTextOff;
      imgCaption = imgCaptionOff;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            lampadaAtual,
            Text(imgCaption),
            ElevatedButton(
              onPressed: () {
                mudaEstado();
                setState(() {});
              }, 
              child: Text(btnText))
          ],
        )
      ),
    );
  }
}