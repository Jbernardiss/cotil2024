// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class MyVetor extends StatefulWidget {
  const MyVetor({super.key});

  @override
  State<MyVetor> createState() => _MyVetorState();
}

class _MyVetorState extends State<MyVetor> {

  List<int> vetor = [1, 4, 8, 9, 6, 9];
  String textoVetor = "";
  int maiorElemento = 0;
  int menorElemento = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vetores em Dart"),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Vetor: " + textoVetor,
                    style: TextStyle(
                        fontSize: 18,
                      ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      mostrar();
                      setState(() {});
                    }, 
                    child: Text("Mostrar Vetor",),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Maior Elemento: " + maiorElemento.toString(),
                    style: TextStyle(
                        fontSize: 18,
                      ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      getMaiorElemento();
                      setState(() {});
                    }, 
                    child: Text("Mostrar Maior Elemento",),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Menor Elemento: " + menorElemento.toString(),
                    style: TextStyle(
                        fontSize: 18,
                      ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      getMenorElemento();
                      setState(() {});
                    }, 
                    child: Text("Mostrar Menor Elemento",),
                  )
                ],
              )    
            ]
          ),
        ),
      ),

    );
  }

  void mostrar() {

    textoVetor = "";

    for(int i = 0; i < vetor.length; i++) {
      textoVetor = textoVetor + " " + vetor[i].toString();
    }
  }

  void getMaiorElemento() {

    maiorElemento = vetor[0];

    for(int i = 0; i < vetor.length; i++) {
      if(vetor[i] > maiorElemento) {
        maiorElemento = vetor[i];
      }
    }
  }

  void getMenorElemento() {

    menorElemento = vetor[0];

    for(int i = 0; i < vetor.length; i++) {
      if(vetor[i] < menorElemento) {
        menorElemento = vetor[i];
      }
    }
  }
}