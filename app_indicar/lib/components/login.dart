import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        elevation: 10,
        title: Text(""),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Material(
              elevation: 10,
              child: Container(
                width: 400,
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(15, 25, 15, 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(bottom: 30),
                        child: Image.asset(
                          "images/indicar Logotipo.png",
                          width: 80,
                          height: 50,
                        )),
                    Container(
                      width: 380,
                      padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                      child: Material(
                        color: Colors.white,
                          child: Container(
                            child: TextField(
                              autofocus: false,
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
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
                      child: Container(
                          color: Colors.white,
                          margin: const EdgeInsets.only(top: 0),
                          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: TextField(
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            style: TextStyle(fontSize: 20,),
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
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
                          child: Text("Entrar", style: TextStyle(fontSize: 18)),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent,
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
                              style: TextStyle(color: Colors.blue, 
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
      ),
    );
  }
}
