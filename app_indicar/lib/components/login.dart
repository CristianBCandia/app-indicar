import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {

  final Color roxo = Color(0xFF9b59b6);
  final Color preto = Color(0xFF34495e);
  final Color azul = Color(0xFF3498db);
  final Color verde = Color(0xFF2ecc71);
  final Color verdeClaro = Color(0xFF1abc9c);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: preto,
      appBar: AppBar(
        backgroundColor: roxo,
        elevation: 10,
        title: Text("INDICAR APP", style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 400,
            height: 400,
            child: Material(
              color: preto,
              elevation: 10,
              borderRadius: BorderRadius.circular(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
                  Center(
                    child: Text("Login", 
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40
                      ),
                    ),
                  ),
                  Container(
                    width: 380,
                    padding: EdgeInsets.fromLTRB(15, 70, 15, 10),
                    child: Material(
                      color: roxo,
                        child: Container(
                          child: TextField(
                            autofocus: false,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                                  Icons.email,
                                  color: preto,
                            ),
                            contentPadding: EdgeInsets.fromLTRB(32, 10, 32, 16),
                            hintText: "E-mail",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      )),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                        margin: const EdgeInsets.only(top: 0),
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: TextField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          style: TextStyle(fontSize: 20,),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                                  Icons.lock,
                                  color: preto,
                            ),
                              contentPadding: EdgeInsets.fromLTRB(20, 10, 32, 16),
                              hintText: "Senha",
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)))),
                        )),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 10),
                      padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                      child: ElevatedButton(
                        child: Text("Entrar", style: TextStyle(fontSize: 18, color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                            primary: verdeClaro,
                            elevation: 10,
                            onPrimary: Colors.white,
                            padding: EdgeInsets.all(18),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {
                          print("clicou");
                          Navigator.pushNamed(context, '/home');
                        },
                      )),
                  Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: TextButton(
                        child: Text("Criar conta", 
                            style: TextStyle(color: verdeClaro, 
                            decoration: TextDecoration.underline,
                            fontSize: 16,
                            ),
                          ),
                        style: TextButton.styleFrom(primary: Colors.orangeAccent),
                        onPressed: () {
                          Navigator.pushNamed(context, '/user_register');
                        },
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
