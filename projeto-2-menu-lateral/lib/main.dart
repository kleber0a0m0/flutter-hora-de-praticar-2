import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

  const MyHomePage({super.key, required this.title});

  // Função para abrir um URL no navegador
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Kléber Albino Moreira'),
              accountEmail: Text('kleber0a0m@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(
                  'KM',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            ListTile(
              title: Text('Cursos de Hardware'),
              onTap: () {
                _launchURL(
                    'https://www.youtube.com/watch?v=iT6E92Kt38o&list=PLHz_AreHm4dn1JHgN9wpbIUhzZmycYQXW');
              },
            ),
            ListTile(
              title: Text('Curso de Java'),
              onTap: () {
                _launchURL(
                    'https://www.youtube.com/watch?v=sTX0UEplF54&list=PLHz_AreHm4dkI2ZdjTwZA4mPMxWTfNSpR');
              },
            ),
            ListTile(
              title: Text('Curso de Marketing Digital'),
              onTap: () {
                _launchURL(
                    'https://www.youtube.com/watch?v=vqdnQqLgGRo&list=PLHz_AreHm4dmmqFmLT17KMjoaE0Y4LqRv');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Hello, World!',
        ),
      ),
    );
  }
}
