import 'package:flutter/material.dart';

class ButtonIndicar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
        child: Container(
        height: 100,
        width: 400,
        child: Material(
          borderRadius: BorderRadius.circular(15),
           child: ElevatedButton (
             child: Text("Quero Indicar!", style: TextStyle(fontSize: 20),),
             style: ElevatedButton.styleFrom(primary: Colors.orangeAccent, 
                elevation:10, onPrimary: Colors.white,
                padding: EdgeInsets.all(10), 
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15))),

             onPressed: (){
               print("clicou");
               Navigator.pushNamed(context, '/home');
             },
           ),
        ),
      ),
    );
  }
}