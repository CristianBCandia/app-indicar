import 'package:flutter/material.dart';

class TextHistoryApp extends StatefulWidget {

  @override
  _TextHistoryAppState createState() => _TextHistoryAppState();
}

class _TextHistoryAppState extends State<TextHistoryApp> {

  String title;

  int _current = 0;

  List txtList = [
    'O primeiro passo é indicar um cliente...',
    'Depois o cliente vai efetuar a compra...',
    'E então você recebe sua comissão!'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      home: Container(
        height: 400,
        width: 400,
        child: Text('O primeiro passo é cadastrar sua indicação.'),
      ),
    );
  }
}