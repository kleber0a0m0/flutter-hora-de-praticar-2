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
      home: MyHomePage(title: 'MEU APP'),
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
        backgroundColor: Color(0xFFEF9A9A),
        title: Text(title),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 227, 201, 201),
      body: Center(
        child: Text(
          'Hello, World!',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
