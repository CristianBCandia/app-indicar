import 'package:flutter/material.dart';

class UserRegister extends StatelessWidget {
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPhone = TextEditingController();
  final TextEditingController _controllerOtherPhone = TextEditingController();

  final Color roxo = Color(0xFF9b59b6);
  final Color preto = Color(0xFF34495e);
  final Color azul = Color(0xFF3498db);
  final Color verde = Color(0xFF2ecc71);
  final Color verdeClaro = Color(0xFF1abc9c);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: preto,
        appBar: AppBar(
          backgroundColor: roxo,
          elevation: 10,
          title: Text(
            'Crie sua conta',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Material(
            elevation: 10,
            color: preto,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 400,
              padding: EdgeInsets.fromLTRB(15, 25, 15, 25),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Material(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.all(const Radius.circular(10.0)),
                      child: Container(
                          child: TextField(
                        autofocus: true,
                        keyboardType: TextInputType.name,
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: preto,
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
                      color: Colors.transparent,
                      borderRadius:
                          BorderRadius.all(const Radius.circular(10.0)),
                      child: Container(
                          margin: const EdgeInsets.only(top: 0),
                          child: TextField(
                            obscureText: true,
                            keyboardType: TextInputType.phone,
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.phone_android,
                                  color: preto,
                                ),
                                contentPadding:
                                    EdgeInsets.fromLTRB(32, 16, 32, 16),
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
                      color: Colors.transparent,
                      borderRadius:
                          BorderRadius.all(const Radius.circular(10.0)),
                      child: Container(
                          margin: const EdgeInsets.only(top: 0),
                          child: TextField(
                            obscureText: true,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: preto,
                                ),
                                contentPadding:
                                    EdgeInsets.fromLTRB(32, 16, 32, 16),
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
                      color: Colors.transparent,
                      borderRadius:
                          BorderRadius.all(const Radius.circular(10.0)),
                      child: Container(
                          margin: const EdgeInsets.only(top: 0),
                          child: TextField(
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: preto,
                                ),
                                contentPadding:
                                    EdgeInsets.fromLTRB(32, 16, 32, 16),
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
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(10.0)),
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
                                color: verdeClaro,
                              ),
                              contentPadding:
                                  EdgeInsets.fromLTRB(32, 16, 32, 16),
                              hintText: "Confirme sua senha",
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: InputBorder.none,
                              border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0),
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
                          child: Text(
                            "Cadastrar",
                            style: TextStyle(fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: preto,
                              elevation: 20,
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
      ),
    );
  }
}
