// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_function_literals_in_foreach_calls, use_function_type_syntax_for_parameters, non_constant_identifier_names, avoid_print

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_login_validacao/usuario.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {

  GlobalKey<FormState> chaveValidacao = GlobalKey();
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  List<Usuario> listaUsuarios = [Usuario("Jbernardis", "123456"), Usuario("mesqman", "senha")];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: chaveValidacao,
        child: Container(

          padding: EdgeInsets.all(10),

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
                obscureText: true,
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

                    bool foundUser = false;

                    listaUsuarios.forEach((usuario) {

                      if(userController.text == usuario.username && passwordController.text == usuario.senha) {
                        foundUser = true;
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(

                            actions: [
                              TextButton(onPressed: () { Navigator.of(ctx).pop(); }, child: Text("OK")),
                            ],
                            title: Text("Login"),
                            content: Text("Login feito com sucesso"),
                          ),
                        );
                      }
                    });

                    if(!foundUser) {
                      showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(

                          actions: [
                            TextButton(onPressed: () { Navigator.of(ctx).pop(); }, child: Text("OK")),
                          ],
                          title: Text("Login"),
                          content: Text("Login falhou, usuário ou senha incorretos."),
                        ),
                      );
                    }
                  }
                },

                child: Text("Enviar"),
              )
            ],
          ),
        ),
      ),
    );
  }
}