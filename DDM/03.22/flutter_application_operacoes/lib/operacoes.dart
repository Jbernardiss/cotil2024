// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';

class MyOperacoes extends StatefulWidget {
  const MyOperacoes({super.key});

  @override
  State<MyOperacoes> createState() => _MyOperacoesState();
}

class _MyOperacoesState extends State<MyOperacoes> {

  TextEditingController controlador = TextEditingController();
  TextEditingController controlador2 = TextEditingController();

  late double resultado = 0;

  void sum() {

    double n1 = double.parse(controlador.text);
    double n2 = double.parse(controlador2.text);

    resultado = n1 + n2;
  }

  void sub() {

    double n1 = double.parse(controlador.text);
    double n2 = double.parse(controlador2.text);

    resultado = n1 - n2;
  }

  void mult() {

    double n1 = double.parse(controlador.text);
    double n2 = double.parse(controlador2.text);

    resultado = n1 * n2;
  }

  void div() {

    double n1 = double.parse(controlador.text);
    double n2 = double.parse(controlador2.text);

    resultado = n1 / n2;
  }

  void clear() {
    controlador.text = "";
    controlador2.text = "";
    resultado = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Operações", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple.shade800,
      ),

      body: Container(
        padding: EdgeInsets.all(20),

        child: Column(
          children: [

            TextField(
              controller: controlador,
              
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20), ),
                labelText: "Número 1",
              ),
            ),

            SizedBox(height: 20,),

            TextField(
              controller: controlador2,

              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20), ),
                labelText: "Número 2",
              ),
            ),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    sum();
                    setState(() {});
                  }, 
                  child: Text("+"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                  )   
                ),
                ElevatedButton(
                  onPressed: () {
                    sub();
                    setState(() {});
                  }, 
                  child: Text("-"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                  )
                ),
                ElevatedButton(
                  onPressed: () {
                    mult();
                    setState(() {});
                  }, 
                  child: Text("*"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                  ) 
                ),
                ElevatedButton(
                  onPressed: () {
                    div();
                    setState(() {});
                  }, 
                  child: Text("/"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                  )
                ),
                ElevatedButton(
                  onPressed: () {
                    clear();
                    setState(() {});
                  }, 
                  child: Text("CE"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                  )
                ),
              ],
            ),

            Text(
              "Resultado: $resultado",
              style: TextStyle(fontSize: 20),
            )
          ]
        ),
      ),
    );
  }
}