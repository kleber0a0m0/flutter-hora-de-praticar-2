import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        color: Colors.grey, // Define o fundo cinza
        child: Center(
          child: Container(
            width: 190,
            height: 190,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.green, width: 2.0), // Define a borda vermelha
              image: DecorationImage(
                image: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
