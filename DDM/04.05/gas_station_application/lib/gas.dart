// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class GasStation extends StatefulWidget {
  const GasStation({super.key});

  @override
  State<GasStation> createState() => _GasStationState();
}

class _GasStationState extends State<GasStation> {

  TextEditingController controllerAlcohol = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Álcool ou Gasolina'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/texaco.png', width: 150,),
              TextField(
              controller: controllerAlcohol,

                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}