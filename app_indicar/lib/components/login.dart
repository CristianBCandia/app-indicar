import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        elevation: 10,
        title:Text (""),
      ),
      body: Container(
      padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:<Widget>[
                  Padding(padding: EdgeInsets.only(bottom: 30),
                      child:Image.asset("images/indicar Logotipo.png",
                        width: 80,
                        height: 50,
                      )
                  ),
                  TextField(
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                      hintText: "E-mail",
                      filled: true,
                      border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                      )
                     ),
                  ),
                  TextField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "senha",
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: ElevatedButton (
                        child: Text("Entrar"),
                        style: ElevatedButton.styleFrom(primary: Colors.orangeAccent, elevation:10, onPrimary: Colors.white,
                            padding: EdgeInsets.all(18), shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10))),

                        onPressed: (){
                          print("clicou");
                          Navigator.pushNamed(context, '/home');
                        },
                      )
                  ),
                 Container(
                     margin: const EdgeInsets.only(top: 15),
                   child: TextButton(
                     child: Text("Criar conta!"),
                     style: TextButton.styleFrom(primary: Colors.orangeAccent),
                     onPressed: (){
                       print("vai para cadastro");
                       Navigator.pushNamed(context, '/user_register');
                     },

                   )

                 ),
            ],),
          ),
        ),
      ),

    );
  }





}