// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyConnect extends StatefulWidget {
  const MyConnect({super.key});

  @override
  State<MyConnect> createState() => _MyConnectState();
}

class _MyConnectState extends State<MyConnect> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter BLE", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            children: [
            
              SizedBox(height: 10,),
              Text(
                "Available devices",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("GoPro 1855\nCD:4E:9E:C2:58:43"),
                  ElevatedButton(onPressed: (){}, child: Text("Connect"))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Mi Smart Band 6\nCD:65:CB:8E:95:34"),
                  ElevatedButton(onPressed: (){}, child: Text("Connect"))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("LE_WH-CH700N\n94:DB:56:A3:E3:12"),
                  ElevatedButton(onPressed: (){}, child: Text("Connect"))
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}