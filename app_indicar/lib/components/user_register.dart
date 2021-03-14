import 'package:app_indicar/models/user.dart';
import 'package:flutter/material.dart';

class UserRegister extends StatelessWidget {

  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          elevation: 10,
          title: Text('Cadastro de usuário'), 
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _controllerName,
                decoration: InputDecoration(labelText: 'Name'),
                keyboardType: TextInputType.name,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                    controller: _controllerEmail,
                    decoration: InputDecoration(labelText: 'Email'),
                    keyboardType: TextInputType.emailAddress,
                  ),
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                child: Text('Cadastrar'),
                color: Colors.redAccent,
                textColor: Colors.white,
                onPressed: () {
                  final String name = _controllerName.text;
                  final String email = _controllerEmail.text;

                  final User user = User(name: name, email: email);
                  print(user.name);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}