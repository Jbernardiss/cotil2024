// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_form_radiobutton/cidadao.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {

  TextEditingController nameController = TextEditingController();
  TextEditingController professionController = TextEditingController();
  String classe = "";
  bool reinado = false;
  bool republica = false;
  bool imperio = false;
  String imperador = "";

  List<String> getFasesList() {
    List<String> returnList = List.empty(growable: true);

    reinado ? returnList.add("Reinado") : null;
    republica ? returnList.add("República") : null;
    imperio ? returnList.add("Império") : null;

    return returnList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      appBar: AppBar(
        title: Text("Votação do melhor Imperador Romano"),
        centerTitle: true,
        backgroundColor: Colors.amber.shade100,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset("assets/images/augustus.jpg", height: 300,),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: "Nome",
                    icon: Icon(Icons.person)
                  ),
                ),
                TextField(
                  controller: professionController,
                  decoration: InputDecoration(
                    labelText: "Profissão",
                    icon: Icon(Icons.work)
                  ),
                ),
                SizedBox(height: 30,),
                Text("Classe", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Patricivs"),
                    Radio(
                      value: "Patricivs",
                      groupValue: classe,
                      onChanged: (value) {
                        classe = value!;
                        setState(() {});
                      },
                    ),
                    SizedBox(width: 10,),
                    Text("Plebeivs"),
                    Radio(
                      value: "Plebeivs",
                      groupValue: classe,
                      onChanged: (value) {
                        classe = value!;
                        setState(() {});
                      },
                    ),
                    SizedBox(width: 10,),
                    Text("Servvs"),
                    Radio(
                      value: "Servvs",
                      groupValue: classe,
                      onChanged: (value) {
                        classe = value!;
                        setState(() {});
                      },
                    ),
                  ],
                ),
                Divider(thickness: 3, color: Colors.black,),

                SizedBox(height: 50,),

                Text("Melhores fases: ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                CheckboxListTile(
                  title: Text("Reinado"),
                  subtitle: Text("625 ~ 510 a.C."),
                  value: reinado, 
                  onChanged: (value) {
                    reinado = value!;
                    setState(() {});
                  }
                ),
                CheckboxListTile(
                  title: Text("República"),
                  subtitle: Text("510 ~ 31 a.C."),
                  value: republica, 
                  onChanged: (value) {
                    republica = value!;
                    setState(() {});
                  }
                ),
                CheckboxListTile(
                  title: Text("Império"),
                  subtitle: Text("31 a.C. ~ 476 d.C."),
                  value: imperio, 
                  onChanged: (value) {
                    imperio = value!;
                    setState(() {});
                  }
                ),

                Divider(thickness: 3, color: Colors.black,),

                SizedBox(height: 50,),

                Text("Melhor Imperador: ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                RadioListTile(
                  title: Text("Marcvs Avrelivs"),
                  subtitle: Text("121 ~ 180 d.C."),
                  value: "Marcvs Avrelivs", 
                  groupValue: imperador, 
                  onChanged: (value) {
                    imperador = value!;
                    setState(() {});
                  }
                ),
                RadioListTile(
                  title: Text("Octavian Avgvstvs"),
                  subtitle: Text("63 a.C. ~ 14 d.C."),
                  value: "Octavian Avgvstvs", 
                  groupValue: imperador, 
                  onChanged: (value) {
                    imperador = value!;
                    setState(() {});
                  }
                ),
                RadioListTile(
                  title: Text("Constantinvm"),
                  subtitle: Text("280 d.C. ~ 337 d.C."),
                  value: "Constantinum", 
                  groupValue: imperador, 
                  onChanged: (value) {
                    imperador = value!;
                    setState(() {});
                  }
                ),
                Divider(thickness: 3, color: Colors.black,),

                SizedBox(height: 10,),

                ElevatedButton(
                  onPressed: () {
                    Cidadao cidadao = Cidadao(nameController.text, professionController.text, classe, getFasesList(), imperador);
                    cidadao.printDados();
                  }, 
                  child: Text("Enviar")
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}