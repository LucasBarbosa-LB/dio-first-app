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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Frases do Dia"),
        backgroundColor: Colors.green[800],
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            const Text(
              "Clique Para Gerar uma Frase",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            ElevatedButton(
                onPressed: () => {},
                child: Text(
                  "Nova Frase",
                  style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
