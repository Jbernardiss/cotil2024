
// ignore_for_file: empty_constructor_bodies, unnecessary_this, avoid_print

class Cidadao {

  String _name;
  String _profissao;
  String _classe;
  List<String> _melhoresFases;
  String _melhorImperador;

  String get name => this._name;

  set name(String value) => this._name = value;

  get profissao => this._profissao;

  set profissao( value) => this._profissao = value;

  get classe => this._classe;

  set classe( value) => this._classe = value;

  get melhoresFases => this._melhoresFases;

  set melhoresFases( value) => this._melhoresFases = value;

  get melhorImperador => this._melhorImperador;

  set melhorImperador( value) => this._melhorImperador = value;

  Cidadao(this._name, this._profissao, this._classe, this._melhoresFases, this._melhorImperador);

  void printDados() {
    print("");
    print("----------------------------------------------");
    print("");
    print("Nome: $name");
    print("Profissão: $profissao");
    print("Classe: $classe");
    print("Melhores Fases: ");
    for (var fase in melhoresFases) {
      print("-> $fase");
    }
    print("Melhor Imperador: $melhorImperador");
    print("");
    print("----------------------------------------------");
    print("");
  }
} 