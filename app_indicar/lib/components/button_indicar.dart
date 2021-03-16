import 'package:flutter/material.dart';

class ButtonIndicar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
       child: Container(
         height: 80,
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
    );
  }
}