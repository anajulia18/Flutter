// ignore_for_file: file_names

import 'package:flutter/material.dart';

class DadosConta extends StatelessWidget {
  var nomeInf, idadeInf, sexoInf, escolaridadeInf, limiteInf, nacionalidadeInf;

  DadosConta(
      {required this.nomeInf,
      required this.idadeInf,
      required this.sexoInf,
      required this.escolaridadeInf,
      required this.limiteInf,
      required this.nacionalidadeInf});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      body: _corpo(context),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Dados da conta"),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 51, 255, 0),
    );
  }

  _corpo(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[_corpoResultado(), _foto()],
      ),
    );
  }

  _corpoResultado() {
    return Container(
      padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _textoCentro("Dados informados: "),
          _texto("Nome: $nomeInf"),
          _texto("Idade: $idadeInf"),
          _texto("Sexo: $sexoInf"),
          _texto("Escolaridade: $escolaridadeInf"),
          _texto("Limite: $limiteInf"),
          _texto("Nacionalidade: $nacionalidadeInf"),
        ],
      ),
    );
  }

  _texto(textoParaExibir) {
    return Text(
      textoParaExibir,
      textAlign: TextAlign.justify,
      style: TextStyle(color: Color.fromARGB(255, 60, 255, 0), fontSize: 25.0),
    );
  }

  _textoCentro(textoParaExibir) {
    return Text(
      textoParaExibir,
      textAlign: TextAlign.center,
      style: TextStyle(color: Color.fromARGB(255, 134, 252, 0), fontSize: 25.0),
    );
  }

  _foto() {
    return Container(
        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
        height: 200.0,
        child: Image.network(
          'https://cdn-icons-png.flaticon.com/512/584/584093.png',
        ));
  }
}
