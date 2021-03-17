
import 'package:app_indicar/components/carousel.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Indicar',
                    style: TextStyle(color: Colors.white, fontSize: 25),),
              ],
          ), 
          backgroundColor: Colors.orangeAccent,
        ),

        body: CarouselHome(),
        backgroundColor: Colors.green[50],
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
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                ),
                
              ),
              CustomListTile(Icons.person, 'Meu Perfil', (){
              }),
              CustomListTile(Icons.person_add, 'Nova Indicação', (){
                Navigator.pushNamed(context, '/client_register');
              }),
              CustomListTile(Icons.qr_code, 'Meu QrCode', (){}),
              CustomListTile(Icons.phone, 'Atendimento', (){}),
              CustomListTile(Icons.dangerous, 'Cancelar Assinatura', (){}),
              CustomListTile(Icons.settings, 'Configurar', (){}),
              CustomListTile(Icons.logout, 'Sair', (){}),
            ],
          ),
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
          splashColor: Colors.blueAccent,
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
                    Icon(icon, size: 30, color: Colors.blueAccent,),
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
                Icon(Icons.arrow_forward, color: Colors.blueAccent,)
              ],
            ),
          ),
        ),
      ),
    );
  }

}