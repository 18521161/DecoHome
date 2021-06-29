import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MyPurchesePage extends StatelessWidget {
  MyPurchesePage();
  var _casepurchase=[ItemPurchase(),ItemPurchase(),EmptyPurchase()];
  PurchaseStateList lts=new PurchaseStateList();
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
                  onTap: (){
                      Navigator.pop(context);
                  },
                  child: Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 30,
                ),),
                Padding(padding: EdgeInsets.only(right: 5)),
                Text(
                  "My purchases",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )
              ]),
            ),
            Padding(padding: EdgeInsets.only(top: 5)),
            //ListView()
            //Text("data")
            Container(
                padding: EdgeInsets.only(left: 5, right: 10),
                child: Stack(children:<Widget>[
                  Positioned(
                    top: 31,
                    left: 20,
                    child: Container(
                    height: 3,
                    width: 360,
                    decoration: BoxDecoration(color: Colors.black.withOpacity(0.3)),
                  )),
                  lts,
                ])),
            _casepurchase[lts.current],
              //CaseOutput()
            // Padding(
            //   padding: EdgeInsets.only(top: 0),
            //   child: ItemPurchase()
            //   //EmptyPurchase()
            // ),
          ]),
    )));
  }
}


class EmptyPurchase extends StatelessWidget {
  const EmptyPurchase({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:160),
      child:Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: [
            SvgPicture.asset('assets/EmtyCard.svg'),
            Padding(
              padding: EdgeInsets.only(top:10,bottom: 10),
              child: Text("Your purchase is empty!",style:TextStyle(fontSize: 24,color: Theme.of(context).accentColor)),
            ),
            Text("Go a head, order some items",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.5)),),
            Text("from the menu.",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.5)),),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Container(
                padding: EdgeInsets.only(top:10,bottom:10,left:20,right:20),
                child:Row(children: <Widget>[
                Icon(Icons.add_outlined,size: 30,color: Colors.white,),
                Text("Add item",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.white),),
              ],),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).accentColor),
              ),
            )
          ],
        )],),);
  }
}

class PurchaseStateList extends StatefulWidget {
  int current=2;
  @override
  _PurchaseStateState createState() => _PurchaseStateState();
}

class _PurchaseStateState extends State<PurchaseStateList> {
  //var _case=[ItemPurchase(),ItemPurchase(),EmptyPurchase()];
  PurchaseStateList temp=new PurchaseStateList();
  int currentIndex = 0;
  List<String> purchaseStateList = ['Pre-order', 'Oncoming', 'History'];
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10),
        height: 30,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: purchaseStateList.length,
            itemBuilder: (context, index) => GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Text(
                          purchaseStateList[index],
                          style: TextStyle(
                              color: index == currentIndex
                                  ? Theme.of(context).accentColor
                                  : Colors.black.withOpacity(0.3),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        Container(
                          height: 3, 
                          width: 80, 
                          decoration: BoxDecoration(color: index==currentIndex? Theme.of(context).accentColor:Colors.transparent),
                          ),
                          //Text('dtat')
                        //Container(child: _case[_currentIndex])
                      ],
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      temp.current=index;
                      currentIndex = index;
                    });
                  },
                )),
                );
  }
}

class ItemPurchase extends StatelessWidget {
  const ItemPurchase({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
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