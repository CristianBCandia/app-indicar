import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {

  final String text = "";

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {

  int _current = 0;

  List imgList = [
    'https://www.google.com.br/url?sa=i&url=https%3A%2F%2Fwww.trocafone.com%2Fcelulares%2Fiphone%2Fiphone-se%2Fm%2Fiphone-se&psig=AOvVaw2ybPzaJy9w6SC3AowlGwfv&ust=1615942889654000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMDGqcDOs-8CFQAAAAAdAAAAABAG',
    'https://www.google.com.br/url?sa=i&url=https%3A%2F%2Fmx.blastingnews.com%2Fopinion%2F2018%2F03%2Flos-clientes-compran-mas-pero-cada-vez-son-mas-pretenciosos-002398073.html&psig=AOvVaw3P094JkpcCCyaVkaplgE0k&ust=1615940590207000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCNjnyoPGs-8CFQAAAAAdAAAAABAE',
    'https://www.google.com.br/url?sa=i&url=https%3A%2F%2Fviverdeblog.com%2Fmateriais-educativos%2Fganhar-dinheiro-online%2F&psig=AOvVaw0X4k49yBI-HL3nUc0O-Vt3&ust=1615940766455000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCOj-kNTGs-8CFQAAAAAdAAAAABAJ'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text(widget.text),
      ), */
      backgroundColor: Colors.blue,
      body: Container(
        height: 425,
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
                  height: 400,
                  initialPage: 0,
                  onPageChanged: (index) {
                    setState((){
                      _current = index;
                    });
                  },
                  items: imgList.map((imgUrl) {
                    return Builder(
                      builder: (BuildContext context){
                        return Material(
                          elevation: 20,
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            width: 320,
                            margin: EdgeInsets.symmetric(horizontal:0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Image.asset('images/client.jpeg', fit: BoxFit.fill,),
                          ),
                        );
                      }
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}