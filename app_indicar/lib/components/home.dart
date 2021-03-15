
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu',
            style: TextStyle(color: Colors.white),), 
        backgroundColor: Colors.orangeAccent,),
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
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      borderRadius: BorderRadius.circular(50),
                      elevation: 10,
                      child: Padding(padding: EdgeInsets.all(8.0),
                      child: Image.asset('images/avatar.png', width: 80, height: 80,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Editar', style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        )
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
              ),
              
            ),
            CustomListTile(Icons.person, 'Meu Perfil', (){
            }),
            CustomListTile(Icons.person_add, 'Novo Cliente', (){}),
            CustomListTile(Icons.qr_code, 'Meu QrCode', (){}),
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

  CustomListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 24.0, 8.0, 0),
      child: Container(
        child: InkWell(
          onTap: onTap,
          splashColor: Colors.orangeAccent,
          child: Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey.shade400))
            ),
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
      ),
    );
  }

}