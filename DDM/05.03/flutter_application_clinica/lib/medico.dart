

// ignore_for_file: unnecessary_this, prefer_final_fields, unused_field

class Medico {

  String _nome = "";
  String _crm = "";
  bool _residencia = false;
  bool _especializacao = false;
  bool _posGraduacao = false;
  bool _permitirChamadasDeEmergencia = false;
  

  Medico(this._nome, this._crm, this._residencia, this._especializacao, this._posGraduacao, this._permitirChamadasDeEmergencia);

  String get nome => this._nome;

  set nome(String value) => this._nome = value;

  get crm => this._crm;

  set crm( value) => this._crm = value;

  bool get residencia => this._residencia;

  set residencia(bool value) => this._residencia = value;

  get especializacao => this._especializacao;

  set especializacao( value) => this._especializacao = value;

  get posGraduacao => this._posGraduacao;

  set posGraduacao( value) => this._posGraduacao = value;

  get permitirChamadasDeEmergencia => this._permitirChamadasDeEmergencia;

  set permitirChamadasDeEmergencia( value) => this._permitirChamadasDeEmergencia = value;

}