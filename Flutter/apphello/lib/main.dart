import 'package:flutter/material.dart'
    show
        AppBar,
        BuildContext,
        Center,
        Color,
        Colors,
        Container,
        FontWeight,
        Key,
        MaterialApp,
        Scaffold,
        StatelessWidget,
        Text,
        TextStyle,
        ThemeData,
        Widget,
        runApp;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Hello Aninha',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 38, 1, 59),
        title: const Center(
          child: Text('Hello Ana Julia e Nickolas'),
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 18, 1, 27),
        child: const Center(
          child: Text(
            'Hello Ana e Nick',
            style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 60, 255, 21),
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
