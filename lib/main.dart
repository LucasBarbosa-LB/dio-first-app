import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _frases = [
    "Tudo posso naquele que me fortalece. 💪 (Filipenses 4:13)",
    "O Senhor é o meu pastor; de nada me faltará. 🙏 (Salmos 23:1)",
    "Até aqui nos ajudou o Senhor! (1 Samuel 7:12)",
    "O que vem de Deus, traz paz. (João 14:27)",
    "Amem-se uns aos outros como eu os amei. (João 15:12)",
  ];

  var _fraseGerada = "Clique para Gerar uma nova Frase!!!";

  void _gerarFrases() {
    var randomNumber = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[randomNumber];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Frases do Dia"),
          backgroundColor: Colors.green[800],
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset("images/logo.png"),
                Text(
                  _fraseGerada,
                  textAlign: TextAlign.justify,
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
                ElevatedButton(
                    onPressed: _gerarFrases,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Background color
                    ),
                    child: const Text(
                      "Nova Frase",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ));
  }
}
