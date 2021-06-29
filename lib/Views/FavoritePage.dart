import 'package:flutter/material.dart';
import 'package:DecoHome/Views/ProductInfoPage.dart';
//import 'package:google_nav_bar/google_nav_bar.dart';

class FavoritePage extends StatefulWidget {
  FavoritePage({Key key}) : super(key: key);
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<FavoritePage> {
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
              "Favorites",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )),
            //Expanded(child: Text(""), flex: 1),
            //Expanded(child: Text(""),flex:1),
            Icon(
              Icons.shopping_cart_rounded,
              color: Colors.black,
              size: 28,
            )
          ]),
          Padding(padding: EdgeInsets.only(top: 15, bottom: 15)),
          //ItemCard(),
          Expanded(
            child: Container(
              child: GridView.builder(
              itemCount: 2,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  childAspectRatio: 0.75),
              itemBuilder: (context, index) => ItemCard(),
            ),)
            //   Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 0),
            //     child: ItemCard(),
            //   ),
          )
        ],
      ),
    ));
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductInfoPage(),
                        ));
      },
      child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          //width: 170,
          //child: Text("data"),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Image(image: AssetImage('assets/Ghe_1.png')),
              Positioned(
                top: 7.5,
                left: 7.5,
                child: Container(
                padding: EdgeInsets.all(5),
                child:Icon(Icons.favorite,size: 25,color: Theme.of(context).accentColor,),
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30))
                ))
              ],
          ),
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15)),
        ),
        Text(
          "Modern dining chair",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        Text("Price"),
      ],
    ));
  }
}
