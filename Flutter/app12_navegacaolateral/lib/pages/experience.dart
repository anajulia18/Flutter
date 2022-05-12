import 'package:flutter/material.dart';

class Experience extends StatefulWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(5, 20, 5, 20),
      child: Wrap(
        spacing: 20,
        runSpacing: 20,
        children: <Widget>[
          _primaryText("Estagiária: Itáu Unibanco (ATUAL)"),
        ],
      ),
    );
  }

  _cardDescription(
      String companyName, String jobTitle, String start, String end) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 255, 123, 0)),
          borderRadius: BorderRadius.circular(10)),
      child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              _primaryText(companyName),
              _secondaryText(jobTitle),
              _thirdText("$start - $end")
            ],
          )),
    );
  }

  _primaryText(String text) {
    return Center(
        child: Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
          color: Color.fromARGB(255, 255, 153, 0),
          fontSize: 22,
          fontWeight: FontWeight.bold),
    ));
  }

  _secondaryText(String text) {
    return Center(
        child: Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
          color: Colors.black, fontSize: 16, fontWeight: FontWeight.normal),
    ));
  }

  _thirdText(String text) {
    return Center(
        child: Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
          color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal),
    ));
  }
}
