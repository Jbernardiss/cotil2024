import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_exeapilocalhost/aluno.dart';
import 'package:flutter_application_exeapilocalhost/repository.dart';
import 'package:http/http.dart' as http;

class ListaAluno extends StatefulWidget {
  const ListaAluno({super.key});

  @override
  State<ListaAluno> createState() => _ListaAlunoState();
}

class _ListaAlunoState extends State<ListaAluno> {

  Aluno al = Aluno();
  AlunoRepository alRepo = AlunoRepository();
  

  Future<void> fazerRequisicao() async {
    var url = Uri.parse('http://localhost:8080/apiAluno/todos');
    http.Response response = await http.get(url);
    if(response.statusCode == 200) {
      List listaAl = jsonDecode(response.body) as List;
      alRepo.listaAl = listaAl.map((listaAl) => Aluno.fromJson(listaAl)).toList();
      print(alRepo.listaAl);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    fazerRequisicao();
    return Scaffold(
      appBar: AppBar(title: Text('Alunos'), centerTitle: true,),
      body: ListView.builder(
        itemCount:  alRepo.listaAl.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text((alRepo.listaAl[index].nome.toString())),
            subtitle: Text(alRepo.listaAl[index].ra.toString()),
          );
        },
      ),
    );
  }
}