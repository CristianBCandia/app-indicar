import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {


  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int _current = 0;

  List imgList = [
    'images/client.jpeg',
    'images/buy.jpg',
    'images/money.jpg'
  ];

  List txtList = [
    'O primeiro passo é indicar um cliente...',
    'Depois o cliente vai efetuar a compra...',
    'E então você recebe sua comissão!'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text(widget.text),
      ), */
      backgroundColor: Colors.blue,
      body: Container(
        height: 750,
        margin: new EdgeInsets.symmetric(vertical: 5.0),
        child: Material(
          elevation: 10,
          color: Colors.blue[800],
          borderRadius: BorderRadius.circular(0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CarouselSlider(
                  height: 500,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  onPageChanged: (index) {
                    setState(() {
                      _current = index;
                    });
                  },
                  items: imgList.map((imgUrl) {
                    return Builder(builder: (BuildContext context) {
                      return Material(
                        elevation: 20,
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          child: Card(
                            child: Column(
                              children: [
                                Image.asset(
                                  imgUrl,
                                  fit: BoxFit.cover,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: imgUrl.toString().contains('buy') ? Text(txtList[1], style: TextStyle(fontSize: 20)) : 
                                    imgUrl.toString().contains('client') ? Text(txtList[0], style: TextStyle(fontSize: 20)) : 
                                    Text(txtList[2], style: TextStyle(fontSize: 20)),/* Text(this.text,
                                    style: TextStyle(
                                      fontSize: 18,
                                    ), */
                                  ),
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 5,
                            margin: EdgeInsets.all(10),
                          ),
                          width: 320,
                          margin: EdgeInsets.symmetric(horizontal: 0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                        ),
                      );
                    });
                  }).toList(),
                ),
                Padding(padding: EdgeInsets.all(40)),
                /* Container(
                  child: _current == 3 ? ButtonIndicar() : TextHistoryApp(),
                ), */
              ],
            ),
          ),
        ),
      ),
    );
  }
}
