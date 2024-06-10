// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Álbums", style: TextStyle(color: Colors.grey.shade200),),
        centerTitle: true,
        backgroundColor: Colors.indigo.shade700,
      ),

      body: Container(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/vinyl.png'),

              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Column(
                      children: [
                        Text("Ye\n"),
                        Image.asset("assets/images/ye.jpg", width: 100,),
                        
                        Text("by Kanye West")
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/album/ye');
                    },
                  ),
                  GestureDetector(
                    child: Column(
                      children: [
                        Text("The Dark Side \nof The Moon", textAlign: TextAlign.center,),
                        Image.asset("assets/images/tdsotm.png", width: 100,),
                        
                        Text("by Pink Floyd")
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/album/tdsotm');
                    },
                  ),
                  GestureDetector(
                    child: Column(
                      children: [
                        Text("In Utero\n"),
                        Image.asset("assets/images/inUtero.jpg", width: 100,),
                        
                        Text("by Nirvana")
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/album/inUtero');
                    },
                  )
                ],
              ),
              SizedBox(height: 15,)
            ],
          ),
        ),
      ) 
      
      
    );
  }
}