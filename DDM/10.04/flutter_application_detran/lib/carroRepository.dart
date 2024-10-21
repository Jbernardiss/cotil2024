import 'package:flutter_application_detran/carro.dart';

class CarroRepository {

  List<Carro> _listaCarros = [];

  CarroRepository();

  List<Carro> get listaCarros => this._listaCarros;

  set listaCarros(List<Carro> value) => this._listaCarros = value;
}