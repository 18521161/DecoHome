import 'package:flutter/material.dart';
import 'package:DecoHome/Views/CompleteStatusPage.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentStatusPage extends StatelessWidget {
  PaymentStatusPage();
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
                              TextStyle(color: Theme.of(context).accentColor)),
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
            OldCard(),
            //OldCard(),
            //OldCard(),
            //DeliveryType(),
            Padding(
                padding: EdgeInsets.only(top: 105, left: 20, right: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CompleteStatusPage(),
                        ));
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Order",
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

class OldCard extends StatefulWidget {
  OldCard({Key key}) : super(key: key);
  @override
  _OldCard createState() => _OldCard();
}

class _OldCard extends State<OldCard> {
  String deliveryType = '';
  Color theme = Color.fromRGBO(6, 130, 130, 50);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              "Information",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
            child: Row(
              children: <Widget>[
                SvgPicture.asset(
                  'assets/google.svg',
                  height: 30,
                  width: 30,
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Text("Google pay",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                Padding(padding: EdgeInsets.only(right: 165)),
                //SvgPicture.asset('assets/Doc.svg'),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Radio(
                          value: 'Google pay',
                          groupValue: deliveryType,
                          onChanged: (val) {
                            deliveryType = val;
                            //theme = val;
                            setState(() {});
                          }),
                    ],
                  ),
                )
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
                SvgPicture.asset(
                  'assets/paypal.svg',
                  height: 30,
                  width: 30,
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Text("Paypal",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                //Padding(padding: EdgeInsets.only(right:200)),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Radio(
                          value: 'Paypal',
                          groupValue: deliveryType,
                          onChanged: (val) {
                            deliveryType = val;
                            //theme = val;
                            setState(() {});
                          }),
                    ],
                  ),
                )
                //Text("data"),
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: Theme.of(context).accentColor, width: 1.5)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              "Add new card",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          Container(
            padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
            child: Row(
              children: <Widget>[
                SvgPicture.asset(
                  'assets/paypal.svg',
                  height: 30,
                  width: 30,
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Text("Visa card",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                //Padding(padding: EdgeInsets.only(right:185)),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Radio(
                          value: 'Visa card',
                          groupValue: deliveryType,
                          onChanged: (val) {
                            deliveryType = val;
                            //theme = val;
                            setState(() {});
                          }),
                    ],
                  ),
                )
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
                SvgPicture.asset(
                  'assets/paypal.svg',
                  height: 30,
                  width: 30,
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Text("Master card",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                //Padding(padding: EdgeInsets.only(right:185)),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Radio(
                          value: 'Master card',
                          groupValue: deliveryType,
                          onChanged: (val) {
                            deliveryType = val;
                            //theme = val;
                            setState(() {});
                          }),
                    ],
                  ),
                )
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
                SvgPicture.asset(
                  'assets/paypal.svg',
                  height: 30,
                  width: 30,
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Text("Momo pay",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                //Padding(padding: EdgeInsets.only(right:185)),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Radio(
                          value: 'Momo pay',
                          groupValue: deliveryType,
                          onChanged: (val) {
                            deliveryType = val;
                            //theme = val;
                            setState(() {});
                          }),
                    ],
                  ),
                )
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
                SvgPicture.asset(
                  'assets/paypal.svg',
                  height: 30,
                  width: 30,
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Text("Zalo pay",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                //Padding(padding: EdgeInsets.only(right:185)),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Radio(
                          value: 'Zalo pay',
                          groupValue: deliveryType,
                          onChanged: (val) {
                            deliveryType = val;
                            //theme = val;
                            setState(() {});
                          }),
                    ],
                  ),
                )
                //Text("data"),
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: Theme.of(context).accentColor, width: 1.5)),
          ),
        ],
      ),
    );
  }
}
