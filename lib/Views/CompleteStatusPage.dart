import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:DecoHome/Views/MainPage.dart';

class CompleteStatusPage extends StatelessWidget {
  CompleteStatusPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                child: Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsets.only(top: 250)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/fireworks.svg',
              height: 150,
              width: 150,
            ),
          ],
        ),
        Padding(
            child: Text("Congratulation!",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600)),
            padding: EdgeInsets.only(top: 5)),
        Padding(
            child: Text(
              "You successfully maked a payment,",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
            padding: EdgeInsets.only(top: 5)),
        Text("enjoy our service!",
            style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 18,
                fontWeight: FontWeight.w400)),
        Padding(
            padding: EdgeInsets.only(top: 259, left: 20, right: 20),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainPage(),
                    ));
              },
              child: Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Continue shopping",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20)),
                  ],
                ),
                decoration: BoxDecoration(
                    //border: Border.all(color:Theme.of(context).accentColor),
                    borderRadius: BorderRadius.circular(30),
                    color: Theme.of(context).accentColor),
              ),
            ))
      ],
    ))));
  }
}
