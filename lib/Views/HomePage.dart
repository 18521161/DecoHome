import 'package:flutter/material.dart';
import 'package:DecoHome/Views/FavoritePage.dart';
import 'package:DecoHome/Views/CartPage.dart';
//import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatelessWidget {
  HomePage();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
            child: Container(
                child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(
                image: AssetImage('Poster_1.jpg'),
                fit: BoxFit.contain,
                width: screenWidth,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 50,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Home",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      //Expanded(child: Text(""), flex: 1),
                      //Expanded(child: Text(""),flex:1),
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
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Trending",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              )),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: <Widget>[
                ItemCard(),
                Padding(padding: EdgeInsets.only(left: 10)),
                ItemCard(),
                Padding(padding: EdgeInsets.only(left: 10)),
                ItemCard(),
              ]),
            ),
          ),
        ],
      ),
    ))));
  }
}
