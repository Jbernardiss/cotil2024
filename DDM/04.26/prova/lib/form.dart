// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:prova/animal.dart';

class MyForms extends StatefulWidget {
  const MyForms({super.key});

  @override
  State<MyForms> createState() => _MyFormsState();
}

class _MyFormsState extends State<MyForms> {

  TextEditingController nomeController = TextEditingController();
  bool _vacinado = false;
  bool _castrado = false;
  bool _microchipado = false;

  void _mostrar(Animal animal) {
    final List<String> saude = List.of([]);

    if (animal.vacinado) {
      saude.add("Vacinado");
    }

    if (animal.castrado) {
      saude.add("Castrado");
    }

    if (animal.microchipado) {
      saude.add("Microchipado");
    }

    print("Nome: ${animal.nome}");

    if (saude.isEmpty) {
      print("Saúde: nenhum");
    } else {
      print("Saúde: ${saude.join(", ")}");
    } 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Clínica de animais do Will",
        style: TextStyle(color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 185, 178, 82)),
      body: Container(
        padding:EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Center(child: Column(children:[
              Image.asset("assets/images/veterinario.jpg", width: 400, height: 400),
              Divider(
                thickness: 1,
                color: Colors.black,
              ),
              SizedBox(height: 30),
              TextField(
              controller: nomeController,
              decoration:
                  InputDecoration(
                    labelText: "Nome do Animal",
                    icon: Icon(Icons.pets),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
                  ),
              ),
              SizedBox(height: 30),
              Divider(
                thickness: 1,
                color: Colors.black,
              ),
              CheckboxListTile(
                title: Text("Vacinado"),
                secondary: Icon(Icons.healing),
                value: _vacinado,
                onChanged: (value) {
                  _vacinado = value!;
                  print("Vacinado: " + value.toString());
                  setState(() {});
                }),
              CheckboxListTile(
                title: Text("Castrado"),
                secondary: Icon(Icons.healing),
                value: _castrado,
                onChanged: (value) {
                  _castrado = value!;
                  print("Castrado: " + value.toString());
                  setState(() {});
                }),
                CheckboxListTile(
                title: Text("Microchipado"),
                secondary: Icon(Icons.healing),
                value: _microchipado,
                onChanged: (value) {
                  _microchipado = value!;
                  print("Microchipado: " + value.toString());
                  setState(() {});
                  }),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 30),
                  Row(children: [
                    ElevatedButton(
                  onPressed: () {
                    Animal animalzinho = Animal();
                    animalzinho.nome = nomeController.text;
                    animalzinho.vacinado = _vacinado;
                    animalzinho.castrado = _castrado;
                    animalzinho.microchipado = _microchipado;
                    _mostrar(animalzinho);
                  },
                  child: Text("Cadastrar")),
                  SizedBox(width: 20),
                  ElevatedButton(onPressed: () {
                    setState(() {
                      nomeController.text = "";
                      _vacinado = false;
                      _castrado = false;
                      _microchipado = false;                   
                    }); 
                  }, child: Text("Cancelar")),
                ]),
            ]),
            )
          )
      ),
    );
  }
}