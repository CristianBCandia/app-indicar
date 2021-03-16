import 'package:flutter/material.dart';

class UserRegister extends StatelessWidget {
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPhone = TextEditingController();
  final TextEditingController _controllerOtherPhone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          elevation: 10,
          title: Text(
            'Crie sua conta',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(25, 40, 25, 10),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Material(
                    elevation: 7,
                    color: Colors.white,
                    borderRadius: BorderRadius.all(const Radius.circular(10.0)),
                    child: Container(
                        child: TextField(
                      autofocus: true,
                      keyboardType: TextInputType.name,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Primeiro nome",
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: InputBorder.none,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    )),
                  ),
                  Padding(padding: EdgeInsets.all(3)),
                  Material(
                    elevation: 7,
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(const Radius.circular(10.0)),
                    child: Container(
                        margin: const EdgeInsets.only(top: 0),
                        child: TextField(
                          obscureText: true,
                          keyboardType: TextInputType.phone,
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.phone_android,
                                color: Colors.black,
                              ),
                              contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                              hintText: "Telefone",
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: InputBorder.none,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )),
                  ),
                  Padding(padding: EdgeInsets.all(3)),
                  Material(
                    elevation: 7,
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(const Radius.circular(10.0)),
                    child: Container(
                        margin: const EdgeInsets.only(top: 0),
                        child: TextField(
                          obscureText: true,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.black,
                              ),
                              contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                              hintText: "E-mail",
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: InputBorder.none,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )),
                  ),
                  Padding(padding: EdgeInsets.all(3)),
                  Material(
                    elevation: 7,
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(const Radius.circular(10.0)),
                    child: Container(
                        margin: const EdgeInsets.only(top: 0),
                        child: TextField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                              hintText: "Senha",
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: InputBorder.none,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )),
                  ),
                  Padding(padding: EdgeInsets.all(3)),
                  Material(
                    elevation: 7,
                    borderRadius: const BorderRadius.all(const Radius.circular(10.0)),
                    color: Colors.white,
                    child: Container(
                        margin: const EdgeInsets.only(top: 0),
                        child: TextField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.verified,
                                color: Colors.black,
                              ),
                              contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                              hintText: "Confirme sua senha",
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: InputBorder.none,
                              border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(const Radius.circular(10.0),
                              ),
                                  borderSide: BorderSide(color: Colors.white24),
                            ),
                          ),
                        )),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Container(
                      margin: const EdgeInsets.only(top: 0),
                      child: ElevatedButton(
                        child: Text("Cadastrar", style: TextStyle(fontSize: 18),),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orangeAccent,
                            elevation: 10,
                            onPrimary: Colors.white,
                            padding: EdgeInsets.all(18),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
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
