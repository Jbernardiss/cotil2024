// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class MyGame extends StatefulWidget {
  const MyGame({super.key});

  @override
  State<MyGame> createState() => _MyGameState();
}

class _MyGameState extends State<MyGame> {

  late Image opponentChoiceImage = Image.asset('assets/images/rock.webp', width: 110);
  late String opponentChoice = 'rock';
  String usersChoice = '';
  String result = '';


  void newOpponentChoice() {
    List<String> options = ['rock', 'paper', 'scissors'];
    String option = options[Random().nextInt(3)]; 

    if(option == 'rock') {
      opponentChoiceImage = Image.asset('assets/images/rock.webp', width: 110);
      opponentChoice = option;
    }
    else if(option == 'paper') {
      opponentChoiceImage = Image.asset('assets/images/paper.webp', width: 110);
      opponentChoice = option;
    }
    else if(option == 'scissors') {
      opponentChoiceImage = Image.asset('assets/images/scissors.webp', width: 110);
      opponentChoice = option;
    }
    else {
      throw Exception('Shut up vscode');
    }
  }

  void compareResults() {
    if(usersChoice == 'rock' && opponentChoice == 'paper') {
      result = 'YOU LOSE!';
    } else if(usersChoice == 'rock' && opponentChoice == 'scissors') {
      result = 'YOU WIN!';
    } else if(usersChoice == 'paper' && opponentChoice == 'rock') {
      result = 'YOU WIN!';
    } else if(usersChoice == 'paper' && opponentChoice == 'scissors') {
      result = 'YOU LOSE';
    } else if(usersChoice == 'scissors' && opponentChoice == 'rock') {
      result = 'YOU LOSE';
    } else if(usersChoice == 'scissors' && opponentChoice == 'paper') {
      result = 'YOU WIN!';
    } else {
      result = 'TIE!';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rock Paper Scissors'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Text("Opponent's Choice"),
            opponentChoiceImage,
            SizedBox(height: 50,),
            Text('You chose: $usersChoice'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  child: Image.asset('assets/images/rock.webp', width: 110),
                  onTap: () {
                    usersChoice = "rock";
                    newOpponentChoice();
                    compareResults();
                    setState(() {});
                  },
                ),
                GestureDetector(
                  child: Image.asset('assets/images/paper.webp', width: 110),
                  onTap: () {
                    usersChoice = "paper";
                    newOpponentChoice();
                    compareResults();
                    setState(() {});
                  },
                ),
                GestureDetector(
                  child: Image.asset('assets/images/scissors.webp', width: 110),
                  onTap: () {
                    usersChoice = "scissors";
                    newOpponentChoice();
                    compareResults();
                    setState(() {});
                  },
                ),
              ],
            ),
            Text(result),
          ],
        ),
      ),
    );
  }
}