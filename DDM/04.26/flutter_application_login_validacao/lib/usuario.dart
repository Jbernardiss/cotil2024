
// ignore_for_file: unnecessary_this

class Usuario {

  String _username = "";
  String _senha = "";



  Usuario(this._username, this._senha);

  String get username => this._username;

  set username(String value) => this._username = value;

  get senha => this._senha;

  set senha( value) => this._senha = value;



}