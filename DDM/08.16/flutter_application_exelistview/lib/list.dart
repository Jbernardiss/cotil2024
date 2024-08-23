// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_exelistview/aluno.dart';

class Lista extends StatefulWidget {
  const Lista({super.key});

  @override
  State<Lista> createState() => _ListaState();
}

class _ListaState extends State<Lista> {

  List<Aluno> listaAl = [
    Aluno("Roberto", 123),
    Aluno("Jackson", 456),
    Aluno("Michael", 789),
    Aluno("Maria", 101),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView"), backgroundColor: Colors.amber,),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) => Divider(thickness: 3,),
                itemCount: listaAl.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(listaAl[index].nome),
                    subtitle: Text(listaAl[index].ra.toString()),
                    trailing: Text(index.toString()),
                    leading: CircleAvatar(child: Text(listaAl[index].nome[0]),)
                  );
                },
              ),
            ),
            
            ElevatedButton(onPressed: () {

            }, child: Text("Voltar"))
          ],
        ),
      ) 
      
    );
  }
}