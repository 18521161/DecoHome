import 'package:DecoHome/Views/SignUpPage.dart';
import 'package:flutter/material.dart';
import 'package:DecoHome/Views/MainPage.dart';
import 'package:DecoHome/Views/SignInPage.dart';
import 'package:DecoHome/Views/CartPage.dart';
import 'package:DecoHome/Views/DeliveryStatusPage.dart';
import 'package:DecoHome/Views/PaymentStatusPage.dart';
import 'package:DecoHome/Views/CompleteStatusPage.dart';
import 'package:DecoHome/Views/OnboardPage3.dart';
import 'package:DecoHome/Views/MyPurchasesPage.dart';
import 'package:DecoHome/Views/ProductInfoPage.dart';
//import 'package:DecoHome/Views/CategoryPage.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override 
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DecoHome",
      home: MainPage(),
      theme: ThemeData(accentColor: Color.fromRGBO(6, 130, 130, 50),hintColor: Color.fromRGBO(6, 130, 130, 0.3),hoverColor: Color.fromRGBO(6, 130, 130, 0.5)),
    );
  }
} 