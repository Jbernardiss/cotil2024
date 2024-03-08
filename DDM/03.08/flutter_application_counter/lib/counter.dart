// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {

  int counter = 0;

  void incrementConter() {
    counter++;
  }

  void decrementCounter() {
    counter--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 120,),
            SizedBox(width: 175, height: 175, child: Image.asset("assets/images/calc.png"),),
            SizedBox(height: 20,),
            Text("Counter using Stateful Widget", style: TextStyle(fontSize: 18),),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                FloatingActionButton(
                  onPressed: () {
                    decrementCounter();
                    setState(() {});
                  }, 
                  shape: CircleBorder(),
                  backgroundColor: Colors.indigo,
                  child: Icon(Icons.exposure_minus_1, color: Colors.white,),
                ),

                SizedBox(width: 15,),

                DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue.shade100,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(30), 
                    child: Text(
                      counter.toString(),
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                
                SizedBox(width: 15,),

                FloatingActionButton(
                  onPressed: () {
                    incrementConter();
                    setState(() {});
                  }, 
                  shape: CircleBorder(),
                  backgroundColor: Colors.indigo,
                  child: Icon(Icons.plus_one, color: Colors.white,),
                )
              ],
            ),
            SizedBox(height: 40,),
            Text(
              "Valor do contador: $counter", 
              style: TextStyle(fontSize: 18),
            )
          ],
        )
      ),
    );
  }
}