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
      backgroundColor: Colors.white,
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
                color: Colors.transparent,
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
        color: Colors.white,
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 10,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: const SizedBox(
                        width: 150,
                        height: 150,
                        child: Text(''),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: const SizedBox(
                        width: 150,
                        height: 150,
                        child: Text(''),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(10.0),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 10,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: const SizedBox(
                        width: 200,
                        height: 150,
                        child: Text(''),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: const SizedBox(
                        width: 150,
                        height: 150,
                        child: Text(''),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 10,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: const SizedBox(
                        width: 200,
                        height: 150,
                        child: Text(''),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: const SizedBox(
                        width: 150,
                        height: 200,
                        child: Text(''),
                      ),
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
