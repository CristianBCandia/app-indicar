import 'package:app_indicar/components/client_register.dart';
import 'package:app_indicar/components/home.dart';
import 'package:app_indicar/components/login.dart';
import 'package:app_indicar/components/user_register.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/home' : (BuildContext context) => new Home(),
        '/client_register': (BuildContext context) => new ClientRegister(),
        '/user_register': (BuildContext context) => new UserRegister(),
      },
      home: Container(
        child: Login(),
      ),    
    );
  }
}