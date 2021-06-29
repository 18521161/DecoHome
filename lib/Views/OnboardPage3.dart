import 'package:flutter/material.dart';

class OnboardPage3 extends StatelessWidget {
  OnboardPage3();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: <Widget>[
        Image(image: AssetImage('assets/Onboard_3.jpg')),
        Padding(
            child: Text("Quality",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600)),
            padding: EdgeInsets.only(top: 30)),
        Padding(
            child: Text("We have product material of the highest",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            padding: EdgeInsets.only(top: 15)),
        Text("quality and resistant for long times.",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        Padding(padding: EdgeInsets.only(top: 20)),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Container(
            padding: EdgeInsets.all(2),
            height: 20,
            width: 20,
            child: Container(
              child: Text(""),
              decoration: BoxDecoration(
                  color: Theme.of(context).hoverColor,
                  borderRadius: BorderRadius.circular(10)),
            ),
            decoration: BoxDecoration(
                //border: Border.all(
                //color: Theme.of(context).accentColor, width: 1.5),
                borderRadius: BorderRadius.circular(10)),
          ),
          Padding(padding: EdgeInsets.only(left: 5)),
          Container(
            padding: EdgeInsets.all(2),
            height: 20,
            width: 20,
            child: Container(
              child: Text(""),
              decoration: BoxDecoration(
                  color: Theme.of(context).hoverColor,
                  borderRadius: BorderRadius.circular(10)),
            ),
            decoration: BoxDecoration(
                //border: Border.all(
                //color: Theme.of(context).accentColor, width: 1.5),
                borderRadius: BorderRadius.circular(10)),
          ),
          Padding(padding: EdgeInsets.only(left: 5)),
          Container(
            padding: EdgeInsets.all(2),
            height: 20,
            width: 20,
            child: Container(
              child: Text(""),
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10)),
            ),
            decoration: BoxDecoration(
                border: Border.all(
                    color: Theme.of(context).accentColor, width: 1.5),
                borderRadius: BorderRadius.circular(10)),
          ),
        ]),
        Container(
          padding: EdgeInsets.only(top: 100, left: 15, right: 15),
          child: Row(
            children: <Widget>[
              Stack(
                children: [
                  Text(
                    "Skip",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Positioned(
                      top: 22,
                      child: Container(
                          height: 2,
                          width: 50,
                          child: null,
                          decoration: BoxDecoration(color: Colors.black)))
                ],
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: Theme.of(context).hoverColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 30,
                        color: Theme.of(context).accentColor,
                      ))
                ],
              ))
            ],
          ),
        )
      ]),
    ));
  }
}
