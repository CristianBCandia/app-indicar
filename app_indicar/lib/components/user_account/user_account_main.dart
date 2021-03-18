import 'package:flutter/material.dart';

class MainUserAccount extends StatelessWidget {
  final Color roxo = Color(0xFF9b59b6);
  final Color preto = Color(0xFF34495e);
  final Color azul = Color(0xFF3498db);
  final Color verde = Color(0xFF2ecc71);
  final Color verdeClaro = Color(0xFF1abc9c);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leadingWidth: 30,
        backgroundColor: roxo,
        actions: [
          IconButton(
              icon: Icon(Icons.add_a_photo),
              color: Colors.white,
              alignment: AlignmentDirectional.bottomStart,
              onPressed: () {})
        ],
        title: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: roxo,
              ),
              margin: new EdgeInsets.symmetric(horizontal: 0.0),
              accountName: Text('Cristian Bittencourt Candia',
                  style: TextStyle(color: Colors.white)),
              accountEmail: Text('cristian.candia7@gmail.com',
                  style: TextStyle(color: Colors.white)),
              currentAccountPicture: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(50),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://www.pngkey.com/png/detail/114-1149878_setting-user-avatar-in-specific-size-without-breaking.png'),
                ),
              ),
            ),
          ],
        ),
        toolbarHeight: 180,
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
        height: 700,
        color: Colors.grey[200],
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    color: Colors.white,
                    elevation: 20,
                    child: SizedBox(
                      height: 100,
                      width: 430,
                      child: Center(
                        child: Text(
                          'Estas são suas atividades',
                          style: TextStyle(
                            color: preto,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 20,
                    child: Image.asset(
                      'images/perfil.jpg',
                      height: 190,
                    ),
                  ),
                  Card(
                  elevation: 10,
                  child: Image.asset(
                    'images/avanco.png',
                    height: 130,
                  )),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 10,
                    child: Image.asset(
                      'images/buy.jpg',
                      height: 130,
                    ),
                  ),
                  Card(
                    elevation: 50,
                    child: Image.asset(
                      'images/client.jpeg',
                      height: 130,
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: Image.asset(
                      'images/house.png',
                      height: 130,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 10,
                    child: Image.asset(
                      'images/grafico.jpg',
                      height: 100,
                      width: 200,
                    ),
                  ),
                  Card(
                    elevation: 10,
                    child: Image.asset(
                      'images/grafico.jpg',
                      height: 100,
                      width: 200,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
