import 'package:flutter/material.dart';

class Mycheckout extends StatefulWidget {
  const Mycheckout({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Center(child: Column(children: [[

Text("Lista  de compras"),

Text("pão"),
Checkbox(
  value: paoSelecionado, 
  onChanged: (value)),

  Text("leite"),
  Checkbox(
    value: leiteSelecionado, 
    onChanged: (value)),



]],)),

    )
  }
}
