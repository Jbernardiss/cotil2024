import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyRequisicao extends StatefulWidget {
  const MyRequisicao({super.key});

  @override
  State<MyRequisicao> createState() => _MyRequisicaoState();
}

class _MyRequisicaoState extends State<MyRequisicao> {

  String dadosApi = "Teste";
  var userId;
  var taskId;
  var title;
  var completed;

  TextEditingController controllerReqId = TextEditingController();

  Future<void> fazerRequisicao(String id) async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/todos/" + id);
    http.Response response;
    response = await http.get(url);
    dadosApi = response.body;
    if(response.statusCode == 200) {
      Map<String, dynamic> dadosFormatados = jsonDecode(response.body);
      userId = (dadosFormatados['userId']);
      taskId = (dadosFormatados['id']);
      title = (dadosFormatados['title']);
      completed = (dadosFormatados['completed']);
      setState(() {});
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exemplo Requisição API"), backgroundColor: Colors.green,),
      body: Center(child: Column(
        children: [

          SizedBox(height: 20,),

          CupertinoTextField(controller: controllerReqId, textAlign: TextAlign.center,),


          ElevatedButton(
            child: Text("Fazer requisição"), 
            onPressed: () {
              fazerRequisicao(controllerReqId.text);
            } 
          ),
          Text("Id do usuário: " + userId.toString()),
          Text("Id da tarefa: " + taskId.toString()),
          Text("Título da tarefa: " + title.toString()),
          Text("Tarefa completa? " + completed.toString()),
        ],
      ),)
    );
  }
}