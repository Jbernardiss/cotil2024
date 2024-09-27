import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_swapi/people.dart';
import 'package:flutter_application_swapi/planets.dart';
import 'package:flutter_application_swapi/starships.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MySwapi extends StatefulWidget {
  const MySwapi({super.key});

  @override
  State<MySwapi> createState() => _MySwapiState();
}

class _MySwapiState extends State<MySwapi> {

  String swapiData = "";
  String chosenOption = "people";
  TextEditingController idtextEditingController = TextEditingController();
  People person = People();
  Planets planet = Planets();
  Starships starship = Starships();

  String infoTitleField = "";
  String field1 = "";
  String field2 = ""; 
  String field3 = "";
  String field4 = "";
  String field5 = "";

  Future<void> makeRequest(String id) async {
    var url = Uri.parse("https://swapi.dev/api/" + chosenOption + "/" + id + "/");
    http.Response response;
    response = await http.get(url);
    swapiData = response.body;
    print(response.statusCode);
    if(response.statusCode == 200) {

      Map<String, dynamic> dadosFormatados = jsonDecode(response.body);

      if(chosenOption == "people") {
        person = People.fromJson(dadosFormatados);
        infoTitleField = "Pessoa";
        field1 = "Nome: ${person.name}";
        field2 = "Altura: ${person.height}cm";
        field3 = "Massa: ${person.mass}kg";
        field4 = "Cor do Cabelo: ${person.getHairColor}";
        field5 = "Cor de Pele: ${person.skinColor}";

      } else if(chosenOption == "planets") {
        planet = Planets.fromJson(dadosFormatados);
        infoTitleField = "Planeta";
        field1 = "Nome: ${planet.name}";
        field2 = "Período de Rotação: ${planet.rotationPeriod}";
        field3 = "Período de Orbitação: ${planet.orbitalPeriod}";
        field4 = "Diametro: ${planet.diameter}km";
        field5 = "Clima: ${planet.climate}";

      } else if(chosenOption == "starships") {
        starship =  Starships.fromJson(dadosFormatados);
        infoTitleField = "Espaçonave";
        field1 = "Nome: ${starship.name}";
        field2 = "Modelo: ${starship.model}";
        field3 = "Fabricante: ${starship.manufacturer}";
        field4 = "Custo em Créditos: ${starship.costInCredits}";
        field5 = "Comprimento: ${starship.lenght}m";
      }
      
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Star Wars Data Finder", style: TextStyle(color: Color.fromRGBO(248, 228, 31, 1)),),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(30, 30, 30, 0.5),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              
              Text("Escolha uma opção", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromRGBO(248, 228, 31, 1)),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Column(
                    children: [
                      Text("Pessoas", style: TextStyle(color: Color.fromRGBO(248, 228, 31, 1)),),
                      CupertinoRadio(
                        value: "people", 
                        groupValue: chosenOption, 
                        onChanged: (value) {
                          chosenOption = value!;
                          setState(() {});
                        }
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Text("Planetas", style: TextStyle(color: Color.fromRGBO(248, 228, 31, 1))),
                      CupertinoRadio(
                        value: "planets", 
                        groupValue: chosenOption, 
                        onChanged: (value) {
                          chosenOption = value!;
                          setState(() {});
                        }
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Text("Espaçonaves", style: TextStyle(color: Color.fromRGBO(248, 228, 31, 1))),
                      CupertinoRadio(
                        value: "starships", 
                        groupValue: chosenOption, 
                        onChanged: (value) {
                          chosenOption = value!;
                          setState(() {});
                        }
                      )
                    ],
                  ),
                ],
              ),

              
              SizedBox(height: 20,),


              Text("Insira o ID", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromRGBO(248, 228, 31, 1)),),
              CupertinoTextField(controller: idtextEditingController,),

              SizedBox(height: 20,),

              SizedBox(
                width: 300,
                child: FloatingActionButton(
                  child: Text("Pesquisar"),
                  onPressed: () {
                    print(idtextEditingController.text);
                    makeRequest(idtextEditingController.text);
                    if(chosenOption == "people") {
                      
                    } else if(chosenOption == "planets") {
                      
                    } else if(chosenOption == "starships") {
                      
                    }
                    setState(() {});
                  }
                ),
              ),

              SizedBox(height: 20,),

              Text("${infoTitleField}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromRGBO(248, 228, 31, 1)),),
              Text("${field1}", style: TextStyle(color: Color.fromRGBO(248, 228, 31, 1)),),
              Text("${field2}", style: TextStyle(color: Color.fromRGBO(248, 228, 31, 1)),),
              Text("${field3}", style: TextStyle(color: Color.fromRGBO(248, 228, 31, 1)),),
              Text("${field4}", style: TextStyle(color: Color.fromRGBO(248, 228, 31, 1)),),
              Text("${field5}", style: TextStyle(color: Color.fromRGBO(248, 228, 31, 1)),),
            ],
          ),
        ),
      ),
    );
  }
}