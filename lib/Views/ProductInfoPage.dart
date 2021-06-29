//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui' as ui;
import 'package:DecoHome/camera/unity_camera.dart';

import '../camera/unity_camera.dart';

class ProductInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        //backgroundColor: Colors.black.withOpacity(0.5),
        body: SafeArea(
            child: Container(
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.1)),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10, right: 10),
                child: Row(children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      size: 30,
                    ),
                  )
                  //Padding(padding: EdgeInsets.only(right: 5)),
                ]),
              ),
              Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Image(image: AssetImage('assets/Ghe_1.png')))
            ]),
            Container(
              child: Stack(overflow: Overflow.visible, children: <Widget>[
                //Text(screenWidth.toString()),
                Container(
                  child: CustomPaint(
                    size: Size(screenWidth, 100),
                    //size:Size(size.width,80),
                    painter: RPSCustomPainter(),
                  ),
                ),
                Positioned(
                    child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 60),
                      child: Text(
                        "Detail",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 5, left: 180),
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => UnityCamera(),
                                  ));
                            },
                            child: Text("View AR",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500))))
                  ],
                )),
                Positioned(
                  left: 175,
                  top: -30,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.favorite_rounded,
                      size: 40,
                      color: Theme.of(context).accentColor,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white),
                  ),
                ),
                Positioned(
                    top: 39,
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 15, left: 20, right: screenWidth - 50),
                      decoration: BoxDecoration(color: Colors.white),
                      child: Text(
                        "Modern dining chair",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    )),
                Positioned(
                    top: 76,
                    child: Container(
                        padding: EdgeInsets.only(
                            left: 20, right: screenWidth - 50, bottom: 1),
                        decoration: BoxDecoration(color: Colors.white),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.star_rate_rounded,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_rate_rounded,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_rate_rounded,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_rate_rounded,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_rate_rounded,
                              color: Colors.yellow,
                            ),
                          ],
                        )))
              ]),
              //decoration: BoxDecoration(color: Colors.white),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(color: Colors.white),
              child: Row(children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 20)),
                Container(
                    padding: EdgeInsets.only(
                        top: 5, bottom: 2.5, left: 7.5, right: 7.5),
                    child: Column(
                      children: <Widget>[
                        //Icon(TablerIcons.ruler),
                        SvgPicture.asset(
                          'assets/Doc.svg',
                          color: Colors.black.withOpacity(0.3),
                        ),
                        Text(
                          "84cm",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.3)),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        //color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.3)))),
                Padding(padding: EdgeInsets.only(left: 10)),
                Container(
                    padding: EdgeInsets.only(
                        top: 12.5, bottom: 2.5, left: 7.5, right: 7.5),
                    child: Column(
                      children: <Widget>[
                        //Icon(TablerIcons.ruler),
                        //Image(image: AssetImage('assets/Ngang.png')),
                        SvgPicture.asset(
                          'assets/Ngang.svg',
                          color: Colors.black.withOpacity(0.3),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 5)),
                        Text(
                          "84cm",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.3)),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        //color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.3)))),
              ]),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 20),
              child: Row(children: <Widget>[
                Text(
                  "Product's description",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ]),
              decoration: BoxDecoration(color: Colors.white),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, bottom: 120),
              child: Row(children: <Widget>[Text("Product's descriotion")]),
              decoration: BoxDecoration(color: Colors.white),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, top: 10, bottom: 13),
              child: Row(
                children: <Widget>[
                  Text(
                    "Price",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Padding(padding: EdgeInsets.only(left: 80)),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.shopping_cart_rounded,
                      color: Colors.black.withOpacity(0.3),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Padding(padding: EdgeInsets.only(left: 80)),
                  Container(
                      padding: EdgeInsets.only(
                          top: 9, bottom: 9, left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Add to cart",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ))
                ],
              ),
              decoration: BoxDecoration(color: Colors.white),
            ),
          ]),
    )));
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.3967000);
    path_0.quadraticBezierTo(size.width * 0.0001000, size.height * 0.0035000,
        size.width * 0.1002750, 0);
    path_0.lineTo(size.width * 0.4000750, 0);
    path_0.quadraticBezierTo(size.width * 0.4160750, size.height * 0.3987000,
        size.width * 0.5006000, size.height * 0.3996000);
    path_0.quadraticBezierTo(size.width * 0.5861750, size.height * 0.3988000,
        size.width * 0.5999500, 0);
    path_0.quadraticBezierTo(
        size.width * 0.8318000, 0, size.width * 0.9007500, 0);
    path_0.quadraticBezierTo(size.width * 0.9998250, size.height * -0.0018000,
        size.width, size.height * 0.4019000);
    path_0.quadraticBezierTo(size.width * 0.7500000, size.height * 0.4006000, 0,
        size.height * 0.3967000);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
