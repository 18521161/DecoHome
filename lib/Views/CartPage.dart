import 'package:flutter/material.dart';
import 'package:DecoHome/Views/DeliveryStatusPage.dart';

class CartPage extends StatelessWidget {
  CartPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
          child: Column(children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 10, right: 10),
              child: Row(children: <Widget>[
                InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child:Icon(
                    Icons.arrow_back_ios_rounded,
                    size: 30,
                  ),),
                Padding(padding: EdgeInsets.only(right: 5)),
                Text(
                  "Cart",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )
              ]),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            ItemCart(),
            Padding(padding: EdgeInsets.only(top: 5)),
            ItemCart(),
          ]),
        )),
        bottomNavigationBar: Container(
          height: 70,
          padding: EdgeInsets.only(left: 10, right: 10),
          child: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 2,
                    width: 400,
                    child: Text(""),
                    decoration:
                        BoxDecoration(color: Theme.of(context).accentColor),
                  ),
                  Row(children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Total price",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DeiveryStatusPage(),
                              ));
                      },
                      child:Container(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 30, right: 30),
                      child: Text("Order",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                      decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.circular(10)),
                    ))
                  ])
                ]),
          ),
          //decoration: BoxDecoration(color: Colors.blueAccent),
        ));
  }
}

class ItemCart extends StatelessWidget {
  const ItemCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Container(
        height: 120,
        child: Row(
          children: <Widget>[
            Image(
              image: AssetImage('assets/Ghe_1.png'),
            ),
            Expanded(child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Modern dining chair",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text("Color"),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text(
                        "Price",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Row(children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                              right: 5, left: 3, top: 2, bottom: 2),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.star_rate_rounded,
                                size: 20,
                                color: Colors.white,
                              ),
                              Text("0.0",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white))
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Theme.of(context).accentColor),
                        ),
                        Padding(padding: EdgeInsets.only(right: 100)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Icon(Icons.add),
                              Container(
                                padding:
                                    EdgeInsets.only(left: 5, right: 5),
                                child: Text("1",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600)),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Theme.of(context)
                                            .accentColor)),
                              ),
                              Icon(Icons.add),
                            ]),
                      ])
                    ],
                  ),
                ),
                Positioned(
                    right: 10, top: 10, child: Icon(Icons.cancel))
              ],
            ))
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: Theme.of(context).accentColor, width: 1.5)),
      ),
    );
  }
}
