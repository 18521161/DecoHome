//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:DecoHome/Views/CartPage.dart';
import 'package:DecoHome/Views/MyPurchasesPage.dart';
import 'package:DecoHome/Views/SignInPage.dart';
//import 'package:google_nav_bar/google_nav_bar.dart';

class UserPage extends StatefulWidget {
  UserPage({Key key}) : super(key: key);
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: 10, top: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(children: <Widget>[
              Expanded(
                  child: Text(
                "User",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              )),
              Expanded(child: Text(""), flex: 5),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartPage(),
                      ));
                },
                child: Icon(
                  Icons.shopping_cart_rounded,
                  color: Colors.black,
                  size: 28,
                ),
              )
            ]),
            Padding(padding: EdgeInsets.only(top: 25, bottom: 25)),
            Container(
                //decoration: BoxDecoration(color: Colors.blueAccent),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(7.5),
                    child: Icon(
                      Icons.camera_alt_rounded,
                      size: 30,
                      color: Theme.of(context).accentColor,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Theme.of(context).hintColor),
                  ),
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Container(
                    width: 150,
                    height: 150,
                    padding: EdgeInsets.all(5),
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.circular(65)),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).accentColor,
                        width: 5,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(75),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Container(
                    padding: EdgeInsets.all(7.5),
                    child: Icon(
                      Icons.settings,
                      size: 30,
                      color: Theme.of(context).accentColor,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Theme.of(context).hintColor),
                  )
                ])),
            Padding(padding: EdgeInsets.only(top: 15, bottom: 15)),
            Padding(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: InkWell(
                onTap: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyPurchesePage(),
                      ));
                },
                child:Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                child: Row(children: <Widget>[
                  //Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                  Icon(
                    Icons.shopping_cart_rounded,
                    size: 30,
                    color: Theme.of(context).accentColor,
                  ),
                  Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                  Text(
                    "My purchases",
                    style: TextStyle(
                        fontSize: 18, color: Theme.of(context).accentColor),
                  ),
                ]),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Theme.of(context).accentColor,
                      width: 2,
                    )),
              ),)
            ),
            Padding(padding: EdgeInsets.only(top: 15, bottom: 15)),
            Padding(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                child: Row(children: <Widget>[
                  //Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                  Icon(
                    Icons.info_rounded,
                    size: 30,
                    color: Theme.of(context).accentColor,
                  ),
                  Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                  Text(
                    "My information",
                    style: TextStyle(
                        fontSize: 18, color: Theme.of(context).accentColor),
                  ),
                ]),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Theme.of(context).accentColor,
                      width: 2,
                    )),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 15, bottom: 15)),
            Padding(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                child: Row(children: <Widget>[
                  //Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                  Icon(
                    Icons.account_balance_wallet_rounded,
                    size: 30,
                    color: Theme.of(context).accentColor,
                  ),
                  Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                  Text(
                    "My wallets",
                    style: TextStyle(
                        fontSize: 18, color: Theme.of(context).accentColor),
                  ),
                ]),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Theme.of(context).accentColor,
                      width: 2,
                    )),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 40, bottom: 40)),
            InkWell(
              onTap: (){
                          Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignIn(),
                        ));
              },
              child:Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    Icons.logout,
                    size: 30,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(10)),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Text(
                  "Sign out",
                  style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.w500),
                )
              ]),
            ))
          ],
        ),
      ),
    );
  }
}
