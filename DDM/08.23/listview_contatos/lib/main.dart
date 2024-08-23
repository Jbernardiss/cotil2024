// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:listview_contatos/cadastro.dart';
import 'package:listview_contatos/contato.dart';
import 'package:listview_contatos/listaContatos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  
  List<Contato> listaContatos = [];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: CadastroContato(),
      routes: {
        '/': (context) => CadastroContato(listaContatos),
        '/contatos': (context) => ListaContatos(listaContatos) 
      },
    );
  }
}

