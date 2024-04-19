// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new, unused_local_variable, avoid_function_literals_in_foreach_calls, prefer_interpolation_to_compose_strings, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_exbanco/aluno.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {

  TextEditingController raController = TextEditingController();
  TextEditingController nomeController = TextEditingController();
  List<Aluno> listaAl = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: raController,
              decoration: InputDecoration(labelText: "Digite o RA"),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: nomeController,
              decoration: InputDecoration(labelText: "Digite o Nome"),
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () {

              int ra = int.parse(raController.text);
              String nome = nomeController.text;
              Aluno al = Aluno(ra, nome);
              listaAl.add(al);
              mostrar();
            }, child: Text("Cadastrar"))
          ]
        ),
      ),
    );
  }

  void mostrar() {
    listaAl.forEach((Aluno a) {
      print(a.ra.toString() + " " + a.nome);
    });
  }
}