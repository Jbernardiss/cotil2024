import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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


  Future<void> makeRequest(String option, String id) async {
    var url = Uri.parse("https://swapi.dev/" + option + "/" + id);
    http.Response response;
    response = await http.get(url);
    swapiData = response.body;
    if(response.statusCode == 200) {
      Map<String, dynamic> dadosFormatados = jsonDecode(response.body);
      
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
                  )
                ],
              ),

              
              SizedBox(height: 20,),


              Text("Insira o ID", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromRGBO(248, 228, 31, 1)),),
              CupertinoTextField(controller: idtextEditingController,)

              
            ],
          ),
        ),
      ),
    );
  }
}