// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {

    final avatarImage = SizedBox(
      width: 200,
      height: 200,
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/img/colonelToad.jpg"),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.lightGreen.shade300,

      appBar: AppBar(
        elevation: 20,
        centerTitle: true,
        title: Text("About Me", 
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Playfair Display"
          )
        ),
        backgroundColor: Colors.green.shade300,
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              SizedBox(height: 20,),

              avatarImage,

              Text(
                "Colonel Toad",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: "Playfair Display",
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                    size: 24,
                  ),
                  SizedBox(width: 10,),
                  Icon(
                    Icons.email,
                    color: Colors.white,
                    size: 24,
                  ),
                  SizedBox(width: 10,),
                  Icon(
                    Icons.sms,
                    color: Colors.white,
                    size: 24,
                  ),
                ],
              ),

              SizedBox(
                width: 370,
                height: 220,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Colonel Toad, also known as Sir Toad, refers to a painting of a toad in gentleman's clothing that is used as an exploitable in image macros. The image was first uploaded online to an Etsy store that was selling the print in 2011. It was shared to Pinterest shortly after. The image was first used in a meme on Facebook and Instagram in 2017 but received more attention starting in 2020 on Twitter and Reddit. The image has also become associated with It's Wednesday My Dudes.",
                      style: TextStyle(
                        fontFamily: "Playfair Display"
                      ),
                    ),
                  )
                ),
              )
            ],
          )
        )
      ),
    );
  }
}