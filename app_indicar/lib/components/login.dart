import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.green[50],
          appBar: AppBar(
            backgroundColor: Colors.orangeAccent,
            elevation: 10,
            title: Text('Login', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          ),
                  ), 
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
               
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: TextField(
                      style: TextStyle(fontSize: 18),
                      controller: _controllerEmail,
                      decoration: InputDecoration(labelText: 'Email'),
                      keyboardType: TextInputType.emailAddress,
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: TextFormField(
                      style: TextStyle(fontSize: 18),
                      obscureText: true,
                      controller: _controllerPassword,
                      decoration: InputDecoration(labelText: 'Senha'),
                      keyboardType: TextInputType.text,
                    ),
                ),
                
                // ignore: deprecated_member_use
                Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Expanded(
                        flex: 2,
                        child: Container(
                          width: 500,
                          height: 60,
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.login, color: Colors.white, size: 20,),
                                      Padding(padding: const EdgeInsets.all(3.0),),
                                      Text('Entrar',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            color: Colors.black54,
                            textColor: Colors.black,
                            onPressed: () {
                              final String name = _controllerPassword.text;
                              final String email = _controllerEmail.text;

                              Navigator.pushNamed(context, '/home');
                            },
                          ),
                        ),
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                     child: Expanded(
                        flex: 2,
                        child: Container(
                          width: 500,
                          height: 100,
                          child: Column(
                            children: [
                              Text('Ou', style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey
                                ),
                              ),
                              Padding(padding:  const EdgeInsets.only(top: 16.0)),
                              Container(
                                height: 60,
                                // ignore: deprecated_member_use
                                child: RaisedButton(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Padding(padding: const EdgeInsets.all(3.0),),
                                            Text('Cadastrar',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  color: Colors.black54,
                                  textColor: Colors.black,
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/user_register');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}