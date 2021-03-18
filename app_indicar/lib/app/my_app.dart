import 'package:app_indicar/components/client_schedule/client_schedule.dart';
import 'package:app_indicar/components/home/base_home.dart';
import 'package:app_indicar/components/login/login.dart';
import 'package:app_indicar/components/user_account/user_account_main.dart';
import 'package:app_indicar/components/user_schedule/user_schedule.dart';
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
        '/user_account': (BuildContext context) => new MainUserAccount(),
        '/login': (BuildContext context) => new Login(),
      },
      home: Container(
        child: Login(),
      ),    
    );
  }
}