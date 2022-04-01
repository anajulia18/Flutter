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
      appBar: _title("Gasolina ou Álcool?"),
      body: _body(),
    );
  }

  _title(String text) {
    return AppBar(
      title: Text(text),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 247, 225, 29),
    );
  }

  _body() {
    return Container(
      color: Color.fromARGB(255, 219, 204, 204),
      padding: const EdgeInsets.symmetric(horizontal: 43.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _image(
              "https://cdn-icons.flaticon.com/png/512/4704/premium/4704306.png?token=exp=1648827733~hmac=da098964e06a1e44e1a725dd34a16530"),
          _field("Preço do alcool/L", n1Controller),
          _field("Preço da gasolina/L", n2Controller),
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
      double resultado = n1 / n2;

      if (resultado <= 1.7) {
        info = "O álcool está compensando mais.";
        return;
      }
      info = "A gasolina está compensando mais";
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
      style:
          const TextStyle(color: Color.fromARGB(255, 221, 0, 0), fontSize: 20),
    );
  }

  _field(String labelTitle, TextEditingController objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitle,
          labelStyle: const TextStyle(color: Color.fromARGB(255, 221, 0, 0))),
      textAlign: TextAlign.center,
      style: const TextStyle(
          color: Color.fromARGB(255, 221, 0, 0), fontSize: 25.0),
      controller: objController,
    );
  }

  _button(String text, Function() onPressedFunction) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: SizedBox(
        height: 50.0,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.yellow),
          onPressed: onPressedFunction,
          child: Text(text,
              style: TextStyle(
                  color: Color.fromARGB(255, 97, 0, 0), fontSize: 20.0)),
        ),
      ),
    );
  }
}
