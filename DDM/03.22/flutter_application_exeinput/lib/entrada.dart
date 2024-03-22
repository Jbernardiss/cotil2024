// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

class MyEntrada extends StatefulWidget {
  const MyEntrada({super.key});

  @override
  State<MyEntrada> createState() => _MyEntradaState();
}

class _MyEntradaState extends State<MyEntrada> {

  TextEditingController controladorTexto = TextEditingController();
  TextEditingController controladorTexto2 = TextEditingController();

  String textoDigitado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Exercício Input"),
        centerTitle: true,
      ),

      body: Container(
        padding: EdgeInsets.all(20),

        child: Column(
          children: [

            TextField(
              controller: controladorTexto,

              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                filled: true,
                fillColor: Colors.deepPurple.shade800,
                labelText: "Digite um texto",
                prefixIcon: Icon(Icons.computer),
              ),
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),

            ElevatedButton(
              onPressed: () {
                textoDigitado = controladorTexto.text;
                setState(() {});
              
              }, 
              child: Text("OK"),
            ),

            Text("Você digitou: $textoDigitado"),

            TextField(
              controller: controladorTexto2,

              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                filled: true,
                fillColor: Colors.deepPurple.shade800,
                labelText: "Digite um texto",
                prefixIcon: Icon(Icons.computer),
              ),
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            
            ElevatedButton(
              onPressed: () {
                textoDigitado = controladorTexto2.text;
                setState(() {});
              }, 
              child: Text("OK 2")),
              
          ],
        )
      ),
    );
  }
}