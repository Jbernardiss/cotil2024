// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_import, sort_child_properties_last, avoid_print, avoid_function_literals_in_foreach_calls, prefer_interpolation_to_compose_strings

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_clinica/medico.dart';

class MyClinica extends StatefulWidget {
  const MyClinica({super.key});

  @override
  State<MyClinica> createState() => _MyClinicaState();
}

class _MyClinicaState extends State<MyClinica> {

  TextEditingController controllerNome = TextEditingController();
  TextEditingController controllerCrm = TextEditingController();

  bool residencia = false;
  bool especializacao = false;
  bool posGraduacao = false;

  bool permitirChamadasDeEmergencia = false;

  List<Medico> listaMedicos = List.empty(growable: true);


  void clearFields() {

    controllerNome.text = "";
    controllerCrm.text = "";

    residencia = false;
    especializacao = false;
    posGraduacao = false;
    permitirChamadasDeEmergencia = false;

    setState(() {});
  }

  void printListaMedicos() {
    print("################# Lista Médicos ###################");
    
    listaMedicos.forEach((Medico m) {
      print("");
      print("Nome: " + m.nome.toString());
      print("CRM: " + m.crm.toString());
      print("Formação:");
      m.residencia ? print(" - Residência") : null;
      m.especializacao ? print(" - Especialização") : null;
      m.posGraduacao ? print(" - Pós-Graduação") : null;

      m.permitirChamadasDeEmergencia ? print("Aceita chamadas de emergência?: Sim") : print("Aceita chamadas de emergência?: Não");

      print("");
      listaMedicos.last == m ? null : print("#####################################");
    });

    print("###################################################");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clínica Bernardis"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Image.asset("assets/images/caduceus.png", height: 300,),

              SizedBox(height: 20,),

              TextField(
                controller: controllerNome,
                decoration: InputDecoration(
                  label: Text("Nome"),
                  labelStyle: TextStyle(color: Colors.teal),
                  prefixIcon: Icon(Icons.person, color: Colors.teal,),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.teal)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.teal)
                  ),
                ),
              ),

              SizedBox(height: 20,),

              TextField(
                controller: controllerCrm,
                decoration: InputDecoration(
                  label: Text("CRM"),
                  labelStyle: TextStyle(color: Colors.teal),
                  prefixIcon: Icon(Icons.medical_information, color: Colors.teal,),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.teal)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.teal)
                  ),
                ),
              ),

              SizedBox(height: 25,),

              Divider(
                thickness: 2,
                color: Colors.teal.shade900,
              ),

              Text(
                "Formação",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),

              CheckboxListTile(
                title: Text("Residência"),
                value: residencia,
                activeColor: Colors.teal,
                onChanged: (value) {
                  residencia = value!;
                  setState(() {});
                }
              ),
              CheckboxListTile(
                title: Text("Especialização"),
                value: especializacao,
                activeColor: Colors.teal,
                onChanged: (value) {
                  especializacao = value!;
                  setState(() {});
                }
              ),
              CheckboxListTile(
                title: Text("Pós-Graduação"),
                value: posGraduacao,
                activeColor: Colors.teal,
                onChanged: (value) {
                  posGraduacao = value!;
                  setState(() {});
                }
              ),

              Divider(
                thickness: 2,
                color: Colors.teal.shade900,
              ),

              SwitchListTile(
                title: Text("Permitir Chamadas de Emergência"),
                value: permitirChamadasDeEmergencia,
                activeColor: Colors.teal,
                onChanged: (value) {
                  permitirChamadasDeEmergencia = value;
                  setState(() {});
                }
              ),

              Divider(
                thickness: 2,
                color: Colors.teal.shade900,
              ),

              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal.shade100,
                      foregroundColor: Colors.teal.shade900,
                    ),
                    child: Text("Cadastrar"),
                    onPressed: () {
                      listaMedicos.add(Medico(controllerNome.text, controllerCrm.text, residencia, especializacao, posGraduacao, permitirChamadasDeEmergencia));
                      clearFields();

                      printListaMedicos();
                    }, 
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal.shade100,
                      foregroundColor: Colors.teal.shade900,
                    ),
                    child: Text("Cancelar"),
                    onPressed: clearFields,
                  )
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}