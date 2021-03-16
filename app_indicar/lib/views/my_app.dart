import 'package:app_indicar/components/client_register.dart';
import 'package:app_indicar/components/home.dart';
import 'package:app_indicar/components/login.dart';
import 'package:app_indicar/components/user_register.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/home' : (BuildContext context) => new Home(),
        '/client_register': (BuildContext context) => new ClientRegister(),
        '/user_register': (BuildContext context) => new UserRegister(),
        '/login': (BuildContext context) => new Login(),
      },
      home: Container(
        child: Login(),
      ),    
    );
  }
}