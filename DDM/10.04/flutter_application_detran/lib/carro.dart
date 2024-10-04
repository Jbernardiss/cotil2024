class Carro {

  String _placa = "";
  String _marca = "";

  Carro();

  Carro.fromJson(Map <String, dynamic> json)
  :
    _placa = json["placa"],
    _marca = json["marca"]
  ;

  
 String get placa => this._placa;

 set placa(String value) => this._placa = value;

 String get marca => this._marca;

 set marca(String value) => this._marca = value;
}