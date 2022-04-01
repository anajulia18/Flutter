import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String randomNumber = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _title("Jogo do Número Aleatório"),
      body: _body(),
    );
  }

  _title(String text) {
    return AppBar(
      title: Text(text),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 9, 255, 0),
    );
  }

  _body() {
    return Container(
      color: Color.fromARGB(255, 0, 0, 0),
      padding: const EdgeInsets.symmetric(horizontal: 43.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _image(
              "https://cdn-icons.flaticon.com/png/512/3470/premium/3470223.png?token=exp=1648830901~hmac=521d1faa19d737f789f39c957f9941c8"),
          const SizedBox(height: 40),
          _text("Número Sorteado: $randomNumber"),
          const SizedBox(height: 40),
          _button("Descubra", _discover),
        ],
      ),
    );
  }

  void _discover() {
    setState(() {
      randomNumber = Random().nextInt(100).toString();
    });
  }

  _image(String url) {
    return Center(
        child: Image.network(
      url,
      width: 100,
    ));
  }

  _text(String text) {
    return Text(
      text,
      style: const TextStyle(
          color: Color.fromARGB(255, 140, 0, 255), fontSize: 20),
    );
  }

  _field(String labelTitle, TextEditingController objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitle,
          labelStyle: const TextStyle(color: Color.fromARGB(255, 0, 255, 8))),
      textAlign: TextAlign.center,
      style: const TextStyle(
          color: Color.fromARGB(255, 162, 0, 255), fontSize: 25.0),
      controller: objController,
    );
  }

  _button(String text, Function() onPressedFunction) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: SizedBox(
        height: 50.0,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 98, 255, 50)),
          onPressed: onPressedFunction,
          child: Text(text,
              style: TextStyle(
                  color: Color.fromARGB(255, 40, 0, 63), fontSize: 20.0)),
        ),
      ),
    );
  }
}
