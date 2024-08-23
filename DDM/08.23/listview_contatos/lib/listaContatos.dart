// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:listview_contatos/contato.dart';

class ListaContatos extends StatefulWidget {
  List<Contato> lista = [];
  ListaContatos(this.lista, {super.key});

  @override
  State<ListaContatos> createState() => _ListaContatosState();
}

class _ListaContatosState extends State<ListaContatos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Contatos'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) => Divider(thickness: 3,),
                itemCount: widget.lista.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(widget.lista[index].nome),
                    subtitle: Text(widget.lista[index].number),
                    leading: Icon(Icons.person),
                  );
                },
              )
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              }, 
              child: Text("Cadastro de Contato")
            ),

            SizedBox(height: 100,)
          ],
        ),
      ),
    );
  }
}