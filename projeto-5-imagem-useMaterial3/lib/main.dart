import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hora de Praticar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Hora de Praticar'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.network(
            'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 20.0, // Ajuste a posição vertical do botão
            child: ElevatedButton(
              onPressed: () {
                // Ação a ser executada ao clicar no botão
              },
              child: Text('Clique para Prosseguir'),
            ),
          ),
        ],
      ),
    );
  }
}
