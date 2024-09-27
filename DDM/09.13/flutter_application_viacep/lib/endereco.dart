class Endereco {

  String cep = "";
  String logradouro = "";
  String complemento = "";
  String unidade = "";
  String bairro = "";
  String localidade = "";
  String uf = "";
  String estado = "";
  String regiao = "";
  String ddd = "";

  Endereco();

  String get getCep => this.cep;

  set setCep(String cep) => this.cep = cep;

  get getLogradouro => this.logradouro;

  set setLogradouro( logradouro) => this.logradouro = logradouro;

  get getComplemento => this.complemento;

  set setComplemento( complemento) => this.complemento = complemento;

  get getUnidade => this.unidade;

  set setUnidade( unidade) => this.unidade = unidade;

  get getBairro => this.bairro;

  set setBairro( bairro) => this.bairro = bairro;

  get getLocalidade => this.localidade;

  set setLocalidade( localidade) => this.localidade = localidade;

  get getUf => this.uf;

  set setUf( uf) => this.uf = uf;

  get getEstado => this.estado;

  set setEstado( estado) => this.estado = estado;

  get getRegiao => this.regiao;

  set setRegiao( regiao) => this.regiao = regiao;

  get getDdd => this.ddd;

  set setDdd( ddd) => this.ddd = ddd;

  Endereco.fromJson(Map<String, dynamic> json)
        : cep = json['cep'],
          logradouro = json['logradouro'],
          complemento = json['complemento'],
          unidade = json['unidade'],
          bairro = json['bairro'],
          localidade = json['localidade'],
          uf = json['uf'],
          estado = json['estado'],
          regiao = json['regiao'],
          ddd = json['ddd']
          ;
}