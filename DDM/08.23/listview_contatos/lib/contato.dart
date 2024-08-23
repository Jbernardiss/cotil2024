
// ignore_for_file: prefer_final_fields, unused_field, unnecessary_this

class Contato {
  String _nome = "";
  String _number = "";

  Contato(this._nome, this._number);

  String get nome => this._nome;

  set nome(String value) => this._nome = value;

  get number => this._number;

  set number( value) => this._number = value;

}