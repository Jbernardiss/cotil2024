// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  List<String> lista = [];
  Favorite(this.lista, {super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  String palavrasLista = "";
  @override
  Widget build(BuildContext context) {
    mostrar();
    return Scaffold(
      appBar: AppBar(
        title: Text("Favoritos"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          children: [
            Text("página de favoritos" + palavrasLista),
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

  void mostrar() {
    for(int i = 0; i<widget.lista.length; i++) {
      palavrasLista = palavrasLista + " " + widget.lista[i].toString();
    }
  }

}