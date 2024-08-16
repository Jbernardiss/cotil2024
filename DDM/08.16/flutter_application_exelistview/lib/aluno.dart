
// ignore_for_file: prefer_final_fields, unused_field, unnecessary_this

class Aluno {
  int _ra = 0; // Блять!
  String _nome = "";

  Aluno(this._nome, this._ra);

  int get ra => this._ra;

  set ra(int value) => this._ra = value;

  get nome => this._nome;

  set nome( value) => this._nome = value;
}