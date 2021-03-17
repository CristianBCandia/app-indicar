import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarouselHome extends StatefulWidget {


  @override
  _CarouselHomeState createState() => _CarouselHomeState();
}

class _CarouselHomeState extends State<CarouselHome> {

  final Color roxo = Color(0xFF9b59b6);
  final Color preto = Color(0xFF34495e);
  final Color azul = Color(0xFF3498db);
  final Color verde = Color(0xFF2ecc71);
  final Color verdeClaro = Color(0xFF1abc9c);

  int _current = 0;

  List<String> text = [
    'Indique um cliente...',
    'E quando ele fizer uma compra pelo seu link...',
    'Você receberá uma comissão!'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: verdeClaro,
        body: ListView(
          children: [
            SizedBox(
              height: 400,
              width: double.infinity,
              child: Carousel(
                dotColor: Colors.white,
                dotSize: 3.0,
                boxFit: BoxFit.none,
                showIndicator: false,
                dotBgColor: verdeClaro,
                images: [
                  Image.asset('images/client.jpeg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset('images/buy.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset('images/money.jpg',
                    fit: BoxFit.cover,
                  ),
                ],
                onImageChange: (prev, next) {
                  setState(() {
                     _current = next;
                  });
                },
              ),
            ),
            Card(
              margin: new EdgeInsets.fromLTRB(0, 0, 0, 0),
              elevation: 10,
              semanticContainer: true,
              child: Container(
                padding: EdgeInsets.all(20.0),
                color: _current != 2 ? roxo : verde,
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(text[_current],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }
}
