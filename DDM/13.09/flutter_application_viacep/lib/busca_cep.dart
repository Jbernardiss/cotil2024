import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_viacep/endereco.dart';
import 'package:http/http.dart' as http;

class MyBuscaCep extends StatefulWidget {
  const MyBuscaCep({super.key});

  @override
  State<MyBuscaCep> createState() => _MyBuscaCepState();
}

class _MyBuscaCepState extends State<MyBuscaCep> {

  String viacepData = "";
  TextEditingController cepController = TextEditingController();
  Endereco endereco = Endereco();

  String cep = "";
  String logradouro = "";
  String complemento = "";
  String unidade = "";
  String bairro = "";
  String localidade = "";
  String uf = "";
  String estado = "";
  String regiao = "";
  String ddd = "";

  Future<void> makeRequest(String cep) async {


    var url = Uri.parse("https://viacep.com.br/ws/" + cep + "/json/");
    http.Response response;
    response = await http.get(url);
    viacepData = response.body;
    print(response.statusCode);
    if(response.statusCode == 200) {

      Map<String, dynamic> dadosFormatados = jsonDecode(response.body);

        Endereco endereco = Endereco.fromJson(dadosFormatados);

        cep = endereco.cep;
        logradouro = endereco.logradouro;
        complemento = endereco.complemento;
        unidade = endereco.unidade;
        bairro = endereco.bairro;
        localidade = endereco.localidade;
        uf = endereco.uf;
        estado = endereco.estado;
        regiao = endereco.regiao;
        ddd = endereco.ddd;
      
      setState(() {});
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Busca Cep", 
        style: TextStyle(color: Colors.white),), 
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              CupertinoSearchTextField(controller: cepController,),

              SizedBox(height: 20,),

              SizedBox(
                width: 300,
                child: FloatingActionButton(
                  child: Text("Buscar CEP"),
                  onPressed: () {
                    makeRequest(cepController.text);
                    setState(() {});
                  }
                ),
              ),

              SizedBox(height: 20,),

              Text("CEP: ${cep}"),
              Text("Logradouro: ${logradouro}"),
              Text("Complemento: ${complemento}"),
              Text("Unidade: ${unidade}"),
              Text("Bairro: ${bairro}"),
              Text("Localidade: ${localidade}"),
              Text("UF: ${uf}"),
              Text("Estado: ${estado}"),
              Text("Região: ${regiao}"),
              Text("DDD: ${ddd}"),
            ],
          ),
        ),
      ),
    );
  }
}