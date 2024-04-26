// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {

  GlobalKey<FormState> chaveValidacao = GlobalKey();
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: chaveValidacao,
        child: Column(
          children: [
            TextFormField(
              controller: userController,
              decoration: InputDecoration(
                labelText: "Usuário",
              ),
              validator: (value) {
                if(value!.isEmpty) {
                  return "O campo usuário não pode estar vazio";
                }
                return null;
              },
            ),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(labelText: "Senha"),
              validator: (value) {
                if(value!.isEmpty) {
                  return "O campo senha não pode estar vazio";
                }
                else if(value.length < 3) {
                  return "A senha não pode ter menos de 3 caracteres";
                }
                return null;
              },
            ),

            ElevatedButton(

              onPressed: () {
                if(chaveValidacao.currentState!.validate()) {
                  if(userController.text == "Jbernardis" && passwordController.text == "123456") {
                    showDialog(
                      context: context, 
                      builder: (ctx) => AlertDialog(

                        actions: [Text("Ok")], 
                        title: Text("Login"), 
                        content: Text("Login feito com sucesso"),
                      ),
                    );
                    
                    
                  } else if(userController.text == "mesqmam" && passwordController.text == "aminha") {
                    AlertDialog(
                      actions: [Text("Ok")], 
                      title: Text("Login"), 
                      content: Text("Login feito com sucesso"),
                    );
                  }
                  else {
                    AlertDialog(
                      actions: [Text("Ok")], 
                      title: Text("Login"), 
                      content: Text("Login falhou, usuário ou senha incorretos"),
                    );
                  }
                }
              }, 
              child: Text("Enviar"),
            )
          ],
        ),
      ),
    );
  }
}