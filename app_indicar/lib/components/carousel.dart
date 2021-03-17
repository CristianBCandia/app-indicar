import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// items: [
// 'images/client.jpeg',
// 'images/buy.jpg',
// 'images/money.jpg'
// ]
class CarouselHome extends StatelessWidget {
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
                ]
              ),
            )
          ],
        ),
      );
  }
}
