import 'package:flutter/material.dart';

class People {

  String name = "";
  String height = "";
  String mass = "";
  String hairColor = "";
  String skinColor = "";

  People();

  People.fromJson(Map<String, dynamic> json)
        : name = json['name'],
          height = json['height'],
          mass = json['mass'],
          hairColor = json['hair_color'],
          skinColor = json['skin_color']
          ;
          
  String get getName => this.name;

  set setName(String name) => this.name = name;

  get getHeight => this.height;

  set setHeight( height) => this.height = height;

  get getMass => this.mass;

  set setMass( mass) => this.mass = mass;

  get getHairColor => this.hairColor;

  set setHairColor( hairColor) => this.hairColor = hairColor;

  get getSkinColor => this.skinColor;

  set setSkinColor( skinColor) => this.skinColor = skinColor;
}