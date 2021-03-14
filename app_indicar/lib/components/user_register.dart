import 'package:app_indicar/models/user.dart';
import 'package:flutter/material.dart';

class UserRegister extends StatelessWidget {

  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPhone = TextEditingController();
  final TextEditingController _controllerOtherPhone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          elevation: 10,
          title: Text('Preencha com seus dados'), 
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _controllerName,
                decoration: InputDecoration(labelText: 'Nome'),
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
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                    controller: _controllerPhone,
                    decoration: InputDecoration(labelText: 'Telefone 1'),
                    keyboardType: TextInputType.phone,
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                    controller: _controllerOtherPhone,
                    decoration: InputDecoration(labelText: 'Telefone 2'),
                    keyboardType: TextInputType.phone,
                  ),
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
              Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Expanded(
                      flex: 2,
                      child: Container(
                        width: 500,
                        height: 60,
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          child: Text('Cadastrar'),
                          color: Colors.redAccent,
                          textColor: Colors.white,
                          onPressed: () {
                            final String name = _controllerName.text;
                            final String email = _controllerEmail.text;
                            final String phoneNumber = _controllerPhone.text;
                            final String otherPhoneNumber = _controllerOtherPhone.text;
                            final String birthDate = _controllerPhone.text;

                            final User user = User(
                                  name: name, 
                                  email: email, 
                                  phoneNumber: phoneNumber,
                                  otherFoneNumber: otherPhoneNumber,
                                  birthDate: birthDate);
                            print(user.name);
                          },
                        ),
                      ),
                    ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}