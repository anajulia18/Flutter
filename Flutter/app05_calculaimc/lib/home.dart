import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();

  String info = "Informe os números!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _title("Cálculo do IMC"),
      body: _body(),
    );
  }

  _title(String text) {
    return AppBar(
      title: Text(text),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 86, 235, 255),
    );
  }

  _body() {
    return Container(
      color: Color.fromARGB(255, 11, 0, 41),
      padding: const EdgeInsets.symmetric(horizontal: 43.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _image("https://cdn-icons-png.flaticon.com/512/1365/1365814.png"),
          _field("Peso", n1Controller),
          _field("Altura", n2Controller),
          _button("Verificar", _verify),
          _text(info)
        ],
      ),
    );
  }

  void _verify() {
    setState(() {
      double n1 = double.parse(n1Controller.text);
      double n2 = double.parse(n2Controller.text);

      if (n2 > 2.50) n2 = n2 / 100;

      n2Controller.value = TextEditingValue(text: n2.toString());

      double imc = n1 / (n2 * n2);
      if (imc < 18.5) info = "Abaixo do peso";
      if (imc >= 18.5 && imc < 25.9) info = "Peso normal";
      if (imc >= 25 && imc < 29.9) info = "Sobrepeso";
      if (imc >= 30 && imc < 34.9) info = "Obesidade Grau I";
      if (imc >= 35 && imc < 39.9) info = "Obesidade Grau II";
      if (imc >= 40) info = "Obesidade Grau III ou mórbida";
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
          color: Color.fromARGB(255, 0, 218, 247), fontSize: 20),
    );
  }

  _field(String labelTitle, TextEditingController objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitle,
          labelStyle: const TextStyle(color: Color.fromARGB(255, 0, 218, 247))),
      textAlign: TextAlign.center,
      style: const TextStyle(
          color: Color.fromARGB(255, 0, 218, 247), fontSize: 25.0),
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
              primary: Color.fromARGB(255, 0, 238, 255)),
          onPressed: onPressedFunction,
          child: const Text("Calcular",
              style: TextStyle(color: Colors.black, fontSize: 20.0)),
        ),
      ),
    );
  }
}
