
import 'package:flutter/material.dart';

import 'carousel.dart';


class Home extends StatelessWidget {

  final Color roxo = Color(0xFF9b59b6);
  final Color preto = Color(0xFF34495e);
  final Color azul = Color(0xFF3498db);
  final Color verde = Color(0xFF2ecc71);
  final Color verdeClaro = Color(0xFF1abc9c);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Indicar',
                  style: TextStyle(color: Colors.white, fontSize: 25),),
            ],
        ), 
        backgroundColor: roxo,
      ),

      body: CarouselHome(),
      backgroundColor: roxo,
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Cristian'),
              accountEmail: Text('cristian.candia7@gmail.com'),
                currentAccountPicture: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(50),
                    child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://www.pngkey.com/png/detail/114-1149878_setting-user-avatar-in-specific-size-without-breaking.png'),
                    backgroundColor: preto,
                  ),
                ),
              decoration: BoxDecoration(
                color: roxo,
              ),
              
            ),
            CustomListTile(Icons.person, 'Meu Perfil', (){
              Navigator.pushNamed(context, '/user_account');
            }),
            CustomListTile(Icons.person_add, 'Nova Indicação', (){
              Navigator.pushNamed(context, '/client_register');
            }),
            CustomListTile(Icons.person_add_alt_1, 'Minhas Indicações', (){
              
            }),
            CustomListTile(Icons.phone, 'Atendimento', (){}),
            CustomListTile(Icons.dangerous, 'Cancelar Assinatura', (){}),
            CustomListTile(Icons.settings, 'Configurar', (){}),
            CustomListTile(Icons.logout, 'Sair', (){}),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget{

  IconData icon;
  String text;
  Function onTap;

  final Color roxo = Color(0xFF9b59b6);
  final Color preto = Color(0xFF34495e);
  final Color azul = Color(0xFF3498db);
  final Color verde = Color(0xFF2ecc71);
  final Color verdeClaro = Color(0xFF1abc9c);

  CustomListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102,
      color: roxo,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 0),
        child: Container(
          color: preto,
          height: 60,
          child: InkWell(
            onTap: onTap,
            splashColor: roxo,
            child: Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey.shade400))
              ),
              height: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    children: [
                      Icon(icon, size: 30, color: Colors.white,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(text, style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w300,
                            color: Colors.white 
                          ),
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward, color: Colors.white,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}