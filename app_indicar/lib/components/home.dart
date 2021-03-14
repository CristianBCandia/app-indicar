import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          elevation: 10,
          title: Text('Home', style: TextStyle(color: Colors.white),),
        ),
        body: Container(
            child: Image.asset('images/house.png'),
          ),
        ),
      );
  }
}