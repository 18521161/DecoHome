import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:DecoHome/Views/ProductInfoPage.dart';
import 'package:DecoHome/Views/CartPage.dart';

class CategoryPage extends StatelessWidget {
  CategoryPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 30),
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[
              Expanded(
                  child: Text(
                "Category",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              )),
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
            Padding(padding: EdgeInsets.only(top: 10, bottom: 10)),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Container(
                  padding: EdgeInsets.only(top: 5, bottom: 5, left: 10),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.search,
                        color: Colors.black.withOpacity(0.5),
                        size: 30,
                      ),
                      Text(
                        "Search",
                        style: TextStyle(
                            fontSize: 18, color: Colors.black.withOpacity(0.5)),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black.withOpacity(0.5)),
                    borderRadius: BorderRadius.circular(10),
                  )),
              //decoration: BoxDecoration(color: Colors.blue),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: CategoryList()),
            Padding(padding: EdgeInsets.only(top: 10, bottom: 10)),
            ItemShow(),
            Padding(padding: EdgeInsets.only(top: 20, bottom: 20)),
            ItemShow(),
            Padding(padding: EdgeInsets.only(top: 20, bottom: 20)),
            ItemShow(),
          ],
        ),
      ),
    )));
  }
}

class ItemShow extends StatelessWidget {
  const ItemShow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductInfoPage(),
              ));
        },
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 60, right: 60),
                child: Image(
                  image: AssetImage('assets/Ghe_1.png'),
                ),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Positioned(
                  top: 15,
                  left: 7.5,
                  child: Column(
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.all(7.5),
                          child: Icon(
                            Icons.favorite,
                            size: 30,
                            color: Theme.of(context).accentColor,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30))),
                      Padding(padding: EdgeInsets.only(top: 10)),
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
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.3)))),
                      Padding(padding: EdgeInsets.only(top: 10)),
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
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.3)))),
                    ],
                  )),
              Positioned(
                  bottom: -25,
                  child: Container(
                    padding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Modern dining chair",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Text("Price")
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                  ))
            ],
            overflow: Overflow.visible,
          ),
        ));
  }
}

class CategoryList extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<CategoryList> {
  int currentIndex = 0;
  List categories = ['All', 'Chair', 'Table', 'Sofa', 'Bed', 'Desk', 'Clock'];
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10),
        height: 30,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      categories[index],
                      style: TextStyle(
                          color: index == currentIndex
                              ? Colors.white
                              : Theme.of(context).hintColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    decoration: BoxDecoration(
                        color: index == currentIndex
                            ? Theme.of(context).accentColor
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: Theme.of(context).hintColor, width: 2)),
                  ),
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                )));
  }
}
