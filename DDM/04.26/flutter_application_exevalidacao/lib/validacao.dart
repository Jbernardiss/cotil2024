// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, avoid_print

import 'package:flutter/material.dart';

class Validacao extends StatefulWidget {
  const Validacao({super.key});

  @override
  State<Validacao> createState() => _ValidacaoState();
}

class _ValidacaoState extends State<Validacao> {

  GlobalKey<FormState> chaveValidacao = GlobalKey();
  TextEditingController raController = TextEditingController();
  TextEditingController nomeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: chaveValidacao,
          child: Column(
            children: [
              TextFormField(
                controller: raController,
                decoration: InputDecoration(labelText: "RA"),
                validator: (value) {

                  if(value!.isEmpty) {
                    return "O RA não pode ser vazio";
                  }
                  else if(int.tryParse(raController.text)! < 10) {
                    return "O RA deve ser maior que 10";
                  }

                  return null;
                },
              ),

              TextFormField(
                controller: nomeController,
                decoration: InputDecoration(labelText: "Nome"),
                validator: (value) {
                  if(value!.isEmpty) {
                    return "O nome não pode ser vazio";
                  }
                  else if(value.length < 5) {
                    return "O nome deve ter pelo menos 5 caracteres";
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if(chaveValidacao.currentState!.validate()) {
                    print(nomeController.text + " " + raController.text.toString());
                  }
                },
                child: Text("Cadastrar")
              )
            ],
          )
        )
      ),
    );
  }
}