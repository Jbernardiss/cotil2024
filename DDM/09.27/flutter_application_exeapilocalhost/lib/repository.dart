
import 'package:flutter_application_exeapilocalhost/aluno.dart';

class AlunoRepository {

  List<Aluno> _listaAl = [];
 
  AlunoRepository();

  List<Aluno> get listaAl => this._listaAl;

  set listaAl(List<Aluno> value) => this._listaAl = value;

}