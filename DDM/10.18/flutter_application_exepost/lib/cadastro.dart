// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_exepost/aluno.dart';
import 'package:http/http.dart' as http;

class CadAluno extends StatefulWidget {
  const CadAluno({super.key});

  @override
  State<CadAluno> createState() => _CadAlunoState();
}

class _CadAlunoState extends State<CadAluno> {


  TextEditingController raController = TextEditingController();
  TextEditingController nomeController = TextEditingController();

  Future<void> salvarBD() async {
    var url = Uri.parse('http://localhost:8080/apiAluno/inserir');

    Aluno al = Aluno();
    al.ra =  int.parse(raController.text);
    al.nome = nomeController.text;

    await http.post(
      url,
      headers: {
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: jsonEncode(
        {
          "ra": al.ra,
          "nome": al.nome
        }
      ),
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Testando método POST"), backgroundColor: Colors.amber,),
      body: Container(
        child: Column(
          children: [
            
            TextField(
              controller: raController,
              decoration: InputDecoration(labelText: "RA"),
            ),

            TextField(
              controller: nomeController,
              decoration: InputDecoration(labelText: "NOME"),
            ),

            ElevatedButton(child: Text("Enviar BD"), onPressed: () {

              salvarBD();
            })
          ],
        ),
      ),
    );
  }
}