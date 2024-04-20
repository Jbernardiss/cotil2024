// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class GasStation extends StatefulWidget {
  const GasStation({super.key});

  @override
  State<GasStation> createState() => _GasStationState();
}

class _GasStationState extends State<GasStation> {

  TextEditingController controllerAlcohol = TextEditingController();
  TextEditingController controllerGasoline = TextEditingController();

  Text finalResult = Text("");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Álcool x Gasolina', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.red.shade800,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/texaco.png', width: 150,),

              SizedBox(height: 65,),

              TextField(
              controller: controllerAlcohol,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.local_gas_station_outlined),
                  label: Text("Preço do Álcool por L"),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),

              SizedBox(height: 15,),

              TextField(
              controller: controllerGasoline,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.local_gas_station_outlined),
                  label: Text("Preço da Gasolina por L"),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),

              SizedBox(height: 15,),

              ElevatedButton(
                child: Text("Comparar", style: TextStyle(fontSize: 25, color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(18),
                  backgroundColor: Colors.red.shade800,
                ),

                onPressed: () {
                  double alcohol = double.tryParse(controllerAlcohol.text)!;
                  double gasoline = double.tryParse(controllerGasoline.text)!;


                  if(controllerAlcohol.text == "" || controllerGasoline.text == "") {
                    finalResult = Text(
                      "Não podem haver campos vazios!",
                      style: TextStyle(
                        color: Colors.red.shade900,
                        fontSize: 30,
                      ),
                    );
                  }
                  else if(alcohol / gasoline >= 0.7) {
                    finalResult = Text(
                      "Abasteça com gasolina!",
                      style: TextStyle(
                        color: Colors.red.shade900,
                        fontSize: 30,
                      ),
                    );
                  }
                  else {
                    finalResult = Text(
                      "Abasteça com álcool!",
                      style: TextStyle(
                        color: Colors.red.shade900,
                        fontSize: 30,
                      ),
                    );
                  }

                  setState(() {});
                },
              ),

              SizedBox(height: 25,),

              finalResult,

            ],
          ),
        )
      ),
    );
  }
}