// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {

  bool biscoitoSelecionado = false;
  bool bolachaSelecionada = false;
  bool dogSelecionado = false;
  bool catSelecionado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: [
        Text("Biscoito ou Bolacha"),
        
        Text("Biscoito"),
        Checkbox(
          value: biscoitoSelecionado, 
          onChanged: (value) {
            biscoitoSelecionado = value!;
            setState(() {});
          }
        ),

        Text("Bolacha"),
        Checkbox(
          value: bolachaSelecionada, 
          onChanged: (value) {
            bolachaSelecionada = value!;
            setState(() {});
          }
        ),

        Text("O pet que eu mais amo: "),
        CheckboxListTile(
          title: Text("Cachorro"),
          subtitle: Text("golden retriever"),
          secondary: Icon(Icons.pets),
          value: dogSelecionado, 
          onChanged: (value) {
            dogSelecionado = value!;
            setState(() {});
          }
        ),

        CheckboxListTile(
          title: Text("Gato"),
          subtitle: Text("siamês"),
          secondary: Icon(Icons.pets),
          value: catSelecionado, 
          onChanged: (value) {
            catSelecionado = value!;
            setState(() {});
          }
        )

      ],)),
    );
  }
}

// I'm typing on my knee
// Tropa do teclado no pau