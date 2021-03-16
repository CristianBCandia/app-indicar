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
                Material(
                  elevation: 10,
                  color: Colors.transparent,
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
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  )),
                ),
                Material(
                  elevation: 10,
                  color: Colors.transparent,
                  child: Container(
                      color: Colors.transparent,
                      margin: const EdgeInsets.only(top: 10),
                      child: TextField(
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        style: TextStyle(fontSize: 20,),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                            hintText: "Senha",
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20.0)))),
                      )),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 10),
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
                      child: Text("Criar conta"),
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
    );
  }
}
