// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'dart:math';

import 'package:flutter/material.dart';

class MyQuotes extends StatefulWidget {
  const MyQuotes({super.key});

  @override
  State<MyQuotes> createState() => _MyQuotesState();
}

class _MyQuotesState extends State<MyQuotes> {

  List<List<String>> quotes = [
    ["Walking on water and developing software from a specification are easy if both are frozen.", "Edward V. Berard"],
    ["Computer science education cannot make anybody an expert programmer any more than studying brushes and pigment can make somebody an expert painter.", "Eric S. Raymond"],
    ["Most good programmers do programming not because they expect to get paid or get adulation by the public, but because it is fun to program.", "Linus Torvalds"]
  ];

  String selectedQuote = "";
  String selectedQuoteAuthor = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade900,
      appBar: AppBar(
        title: Text(
          "Coding Quotes",
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink.shade700,
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: 350,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("assets/images/computer.jpg"),
                ),
              ),
              SizedBox(height: 15,),
              SizedBox(
                width: 325,
                child: Column(
                  children: [
                    Text(
                      '"$selectedQuote"',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "-$selectedQuoteAuthor",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ),
              SizedBox(height: 15,),
              ElevatedButton(
                onPressed: () {
                  selectNewQuote();
                  setState(() {});
                }, 
                child: Text("New quote")
              )
            ],
          )
        ),
      ),
    );
  }

  void selectNewQuote() {
    int randomAuthNum = Random().nextInt(quotes.length);
    selectedQuote = quotes[randomAuthNum][0];
    selectedQuoteAuthor = quotes[randomAuthNum][1];
  }
}