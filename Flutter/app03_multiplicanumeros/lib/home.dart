import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController numero1Controller = TextEditingController();
  TextEditingController numero2Controller = TextEditingController();

  String info = "Digite os números a serem multiplicados";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _title("Multiplicador de números"),
      body: _body(),
      backgroundColor: Colors.black,
    );
  }

  _title(String text) {
    return AppBar(
      title: Text(text),
      centerTitle: true,
      backgroundColor: Colors.pink,
    );
  }

  _body() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _field("Digite o 1° número", numero1Controller),
        _field("Digite o 2° número", numero2Controller),
        _button("Multiplicar", _multiply),
        _text(info)
      ],
    );
  }

  void _multiply() {
    setState(() {
      double n1 = double.parse(numero1Controller.text);
      double n2 = double.parse(numero2Controller.text);
      double resultado = n1 * n2;

      info = "Resultado $resultado";
    });
  }

  _text(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.pink, fontSize: 20),
    );
  }

  _field(String labelTitle, TextEditingController objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitle,
          labelStyle: const TextStyle(color: Colors.pink)),
      textAlign: TextAlign.center,
      style: const TextStyle(color: Colors.pink, fontSize: 25.0),
      controller: objController,
    );
  }

  _button(String text, Function() onPressedFunction) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: SizedBox(
        height: 50.0,
        child: ElevatedButton(
          onPressed: onPressedFunction,
          child: const Text("Calcular",
              style: TextStyle(color: Colors.black, fontSize: 20.0)),
        ),
      ),
    );
  }
}
