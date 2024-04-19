// ignore_for_file: prefer_final_fields, unused_field, unnecessary_this

class Aluno {

  //Atrib.
  int _ra = 0;
  String _nome = "";

  // Construtor
  Aluno(this._ra, this._nome);

  //getters e setters
  int get ra => this._ra;

  set ra(int value) => this._ra = value;

  get nome => this._nome;

  set nome( value) => this._nome = value;
}