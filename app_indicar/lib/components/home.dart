
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu',
            style: TextStyle(color: Colors.white),), 
        backgroundColor: Colors.greenAccent[700],),
      body: Center(child: Text('Home Body')),
      backgroundColor: Colors.green[50],
      drawer: Drawer(
        
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu Principal', 
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              decoration: BoxDecoration(
                color: Colors.deepOrange[600],
              ),
              
            ),
            CustomListTile(Icons.person, 'Meu Perfil', (){}),
            CustomListTile(Icons.person_add, 'Novo Cliente', (){}),
            CustomListTile(Icons.qr_code, 'Meu QrCode', (){}),
            CustomListTile(Icons.phone, 'Atendimento', (){}),
            CustomListTile(Icons.dangerous, 'Cancelar Assinatura', (){}),
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

  CustomListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 24.0, 8.0, 0),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.orangeAccent,
        child: Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  Icon(icon, size: 30, color: Colors.orangeAccent,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(text, style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w300,
                        color: Colors.black 
                      ),
                    ),
                  ),
                ],
              ),
              Icon(Icons.arrow_right, size: 30,)
            ],
          ),
        ),
      ),
    );
  }

}