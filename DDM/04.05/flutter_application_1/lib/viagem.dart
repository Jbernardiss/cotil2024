import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key, required String title});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String escolha = "";
  Image abre = Image.asset('assets/images/seila.png');
  Image fecha = Image.asset('assets/images/seila2.png');
  late Image atual = abre;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Minha proxima viagem"),backgroundColor: Colors.pinkAccent,),body: Center(child: Column(children: 
      [
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly
        ,children: [

          GestureDetector(
            child:  Image.asset('assets/images/sitio.jpg',width: 200, height: 200),onTap: () {
              escolha = "Xique-Xique - Ba";
              setState(() {
                
              });
            },
          )
       ,
  GestureDetector(child:  Image.asset('assets/images/mount.jpg',width: 200, height: 200),onTap: () {
    escolha = "Ponta grossa - Rs";
    setState(() {
      
    });
    
  },)

         
       
      ],) ,
      Text("Você escolheu: " + escolha), 
      GestureDetector(
        child: atual,
        onTapDown: (details) {
          atual = fecha;
setState(() {
  
})
;
        },
        onTapUp: (details) {
          
          atual = abre;
          setState(() {
            
          });
        },
      )
      ],)),
    );
  }
}