// ignore_for_file: prefer_final_fields, unused_field

class Animal{
  String _nome = "";
  bool _vacinado = false;
  bool _castrado = false;
  bool _microchipado = false;
 String get nome => this._nome;

 set nome(String value) => this._nome = value;

  get vacinado => this._vacinado;

 set vacinado( value) => this._vacinado = value;

  get castrado => this._castrado;

 set castrado( value) => this._castrado = value;

  get microchipado => this._microchipado;

 set microchipado( value) => this._microchipado = value;

}