import 'package:flutter/material.dart';
import 'package:DecoHome/Views/PaymentStatusPage.dart';

class DeiveryStatusPage extends StatelessWidget {
  DeiveryStatusPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
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
                ),
                Padding(padding: EdgeInsets.only(right: 5)),
                Text(
                  "Delivery status",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )
              ]),
            ),
            Padding(padding: EdgeInsets.only(top: 15)),
            Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(children: <Widget>[
                  Container(
                    width: 500,
                    height: 1.5,
                    child: Text(""),
                    decoration:
                        BoxDecoration(color: Theme.of(context).accentColor),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Order",
                        style: TextStyle(color: Theme.of(context).accentColor),
                      ),
                      Padding(padding: EdgeInsets.only(right: 45)),
                      Text(
                        "Delivery",
                        style: TextStyle(color: Theme.of(context).accentColor),
                      ),
                      Padding(padding: EdgeInsets.only(right: 45)),
                      Text("Payment",
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.5))),
                      Padding(padding: EdgeInsets.only(right: 45)),
                      Text("Complete",
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.5))),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 10, top: 5),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 15,
                          width: 15,
                          child: Text(""),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context).accentColor),
                        ),
                        Container(
                          height: 3,
                          width: 75,
                          child: Text(""),
                          decoration: BoxDecoration(
                              color: Theme.of(context).accentColor),
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          child: Text(""),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context).accentColor),
                        ),
                        Container(
                          height: 3,
                          width: 90,
                          child: Text(""),
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5)),
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          child: Text(""),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black.withOpacity(0.5)),
                        ),
                        Container(
                          height: 3,
                          width: 90,
                          child: Text(""),
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5)),
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          child: Text(""),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black.withOpacity(0.5)),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Container(
                    width: 500,
                    height: 1.5,
                    child: Text(""),
                    decoration:
                        BoxDecoration(color: Theme.of(context).accentColor),
                  ),
                ])),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "Information",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
            Container(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Text(
                            "Name",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          //Padding(padding: EdgeInsets.only(bottom:5)),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: TextField(
                                cursorColor: Theme.of(context).accentColor,
                                decoration: InputDecoration(
                                    //labelText: "Name",
                                    hintText: "Enter your name",
                                    //labelText: "Name",
                                    hintStyle: TextStyle(fontSize: 14),
                                    border: InputBorder.none)),
                          ),
                          Positioned(
                              top: 45,
                              child: Container(
                                height: 1,
                                width: 500,
                                child: Text(""),
                                decoration: BoxDecoration(
                                    color: Theme.of(context).accentColor),
                              ))
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Stack(
                        children: <Widget>[
                          Text(
                            "Phone",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          //Padding(padding: EdgeInsets.only(bottom:5)),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: TextField(
                                cursorColor: Theme.of(context).accentColor,
                                decoration: InputDecoration(
                                    //labelText: "Name",
                                    hintText: "Enter your phone numbers",
                                    //labelText: "Name",
                                    hintStyle: TextStyle(fontSize: 14),
                                    border: InputBorder.none)),
                          ),
                          Positioned(
                              top: 45,
                              child: Container(
                                height: 1,
                                width: 500,
                                child: Text(""),
                                decoration: BoxDecoration(
                                    color: Theme.of(context).accentColor),
                              ))
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Stack(
                        children: <Widget>[
                          Text(
                            "Address",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          //Padding(padding: EdgeInsets.only(bottom:5)),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: TextField(
                                cursorColor: Theme.of(context).accentColor,
                                decoration: InputDecoration(
                                    //labelText: "Name",
                                    hintText: "Enter your addess",
                                    //labelText: "Name",
                                    hintStyle: TextStyle(fontSize: 14),
                                    border: InputBorder.none)),
                          ),
                          Positioned(
                              top: 45,
                              child: Container(
                                height: 1,
                                width: 500,
                                child: Text(""),
                                decoration: BoxDecoration(
                                    color: Theme.of(context).accentColor),
                              ))
                        ],
                      ),
                    ])),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Delivery",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
            DeliveryType(),
            Padding(
                padding: EdgeInsets.only(top: 200, left: 20, right: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentStatusPage(),
                        ));
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Next",
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
        ),
      )),
    );
  }
}

class DeliveryType extends StatefulWidget {
  DeliveryType({Key key}) : super(key: key);
  @override
  _DeliveryType createState() => _DeliveryType();
}

class _DeliveryType extends State<DeliveryType> {
  String deliveryType = '';
  Color theme = Color.fromRGBO(6, 130, 130, 50);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
            child: Row(
              children: <Widget>[
                Text("Fast delivery",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                Padding(padding: EdgeInsets.only(right: 200)),
                Radio(
                    value: 'Fast delivery',
                    groupValue: deliveryType,
                    onChanged: (val) {
                      deliveryType = val;
                      //theme = val;
                      setState(() {});
                    }),
                //Text("data"),
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: Theme.of(context).accentColor, width: 1.5)),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          Container(
            padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
            child: Row(
              children: <Widget>[
                Text("Normal delivery",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                Padding(padding: EdgeInsets.only(right: 175)),
                Radio(
                    value: 'Normal delivery',
                    groupValue: deliveryType,
                    onChanged: (val) {
                      deliveryType = val;
                      //theme = val;
                      setState(() {});
                    }),
                //Text("data"),
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: Theme.of(context).accentColor, width: 1.5)),
          )
        ],
      ),
    );
  }
}
