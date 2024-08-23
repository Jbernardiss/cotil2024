
// ignore_for_file: sort_child_properties_last, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:listview_contatos/contato.dart';

class CadastroContato extends StatefulWidget {
  List<Contato> lista = [];
  CadastroContato(this.lista, {super.key});

  @override
  State<CadastroContato> createState() => _CadastroContatoState();
}

class _CadastroContatoState extends State<CadastroContato> {

  TextEditingController controllerNome = TextEditingController();
  TextEditingController controllerNumber = TextEditingController();
  GlobalKey<FormState> chaveValidacao = GlobalKey();

  void clearInput() {
    controllerNome.clear();
    controllerNumber.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Contatos"), 
        backgroundColor: Colors.blue, 
        actions: [
          IconButton(
            icon: Icon(Icons.list_alt), 
            onPressed: () {
              Navigator.pushNamed(context, '/contatos');
            },
          )
        ],
      ),


      body: Center(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Form(
            key: chaveValidacao,
            child: Column(
              children: [

                FittedBox( 
                  child: Image.asset("assets/images/phonebook.webp", fit: BoxFit.fitWidth, width: 385, height: 150,),
                  clipBehavior: Clip.hardEdge,
                ),

                SizedBox(height: 30,),


                TextFormField(
                  controller: controllerNome,
                  decoration: InputDecoration(
                    label: Text("Nome"),
                    border: OutlineInputBorder()
                  ),
                  validator: (value) {
                    if(value!.isEmpty) {
                      return "O campo nome não pode estar vazio";
                    }
                    return null;
                  },
                ),

                SizedBox(height: 15,),

                TextFormField(
                  controller: controllerNumber,
                  decoration: InputDecoration(
                    label: Text("Número"),
                    border: OutlineInputBorder()
                  ),
                  validator: (value) {
                    if(value!.isEmpty) {
                      return "O campo número não pode estar vazio";
                    }
                    return null;
                  },
                ),

                SizedBox(height: 45,),

                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if(chaveValidacao.currentState!.validate()) {
                          widget.lista.add(Contato(controllerNome.text, controllerNumber.text));
                          clearInput();
                        }
                      }, 
                      child: Text("Cadastrar")
                    ),

                    ElevatedButton(
                      onPressed: () {
                        clearInput();
                      }, 
                      child: Text("Limpar")
                    ),
                  ],
                ),
              ],
            ),
          ) 
        ),
      ),
    );
  }
}