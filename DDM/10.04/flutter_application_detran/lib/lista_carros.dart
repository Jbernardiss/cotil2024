
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_detran/carro.dart';
import 'package:flutter_application_detran/carroRepository.dart';
import 'package:http/http.dart' as http;

class ListaCarros extends StatefulWidget {
  const ListaCarros({super.key});

  @override
  State<ListaCarros> createState() => _ListaCarrosState();
}

class _ListaCarrosState extends State<ListaCarros> {

  List listaCarrosJson = [];
  CarroRepository carroRepository = CarroRepository();


  Future<void> fazerRequisicao() async {
    var url =  Uri.parse('http://localhost:8080/apiCarros/todos');
    http.Response res = await http.get(url);
    if(res.statusCode == 200) {
      listaCarrosJson = jsonDecode(res.body) as List;
      carroRepository.listaCarros = listaCarrosJson.map((carro) => Carro.fromJson(carro)).toList();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detran', style: TextStyle(color: Colors.white),), centerTitle: true, backgroundColor: Color.fromARGB(255, 36, 78, 168,)),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),

            Image.asset('assets/images/detran.png', height: 150,),
            
            SizedBox(height: 15,),

            SizedBox(
              width: 150,
              child: FloatingActionButton(
                backgroundColor: Color.fromARGB(255, 36, 78, 168,),
                child: Text('Listar Carros', style: TextStyle(color: Colors.white),),
                onPressed: () {
                  fazerRequisicao();
                }
              ),
            ),
            
            SizedBox(height: 30,),

            Expanded(
              child: ListView.separated(
                itemCount: carroRepository.listaCarros.length,
                
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(carroRepository.listaCarros[index].placa, style: TextStyle(color: Colors.white),),
                    subtitle: Text(carroRepository.listaCarros[index].marca, style: TextStyle(color: Colors.white),),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    tileColor: Color.fromARGB(255, 36, 78, 168,),
                  );
                },

                separatorBuilder: (context, index) {
                  return SizedBox(height: 10,);
                },
              )
            )

            
          ],
        ),
      ),
    );
  }
}