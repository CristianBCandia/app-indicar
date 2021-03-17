import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarouselHome extends StatefulWidget {

  @override
  _CarouselHomeState createState() => _CarouselHomeState();
}

class _CarouselHomeState extends State<CarouselHome> {

  int _current = 0;

  List<String> text = [
    'Indique um cliente...',
    'E quando ele fizer uma compra pelo seu link...',
    'Você receberá uma comissão!'
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(""),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 400,
              width: double.infinity,
              child: Carousel(
                dotColor: Colors.white,
                dotSize: 3.0,
                boxFit: BoxFit.none,
                dotBgColor: Colors.orangeAccent,
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
              margin: new EdgeInsets.fromLTRB(10, 20, 10, 0),
              elevation: 10,
              semanticContainer: true,
              child: Container(

                padding: EdgeInsets.all(20.0),
                color: Colors.deepPurpleAccent,
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
