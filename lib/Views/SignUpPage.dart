import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:DecoHome/Views/SignInPage.dart';
import 'package:DecoHome/Views/ForgotPasswordPage.dart';
//import 'package:transparent_image/transparent_image.dart';
//import 'dart:async';
//import 'package:flutter/services.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //resizeToAvoidBottomInset: false,
        body: Center(
          child: ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    child: FlatButton(
                      padding: EdgeInsets.only(),
                      child: Icon(Icons.arrow_back_ios_rounded),
                      color: Colors.transparent,
                      minWidth: 50,
                      height: 50,
                      onPressed: () {
                        print('back to login');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  SignIn(), // back to login scene
                            ));
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 40),
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 20, left: 30),
                        child: FlatButton(
                          minWidth: 140,
                          height: 5,
                          color: Color.fromRGBO(6, 130, 130, 50),
                          child: Text(
                            '',
                            style: TextStyle(color: Colors.red),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        decoration:
                            BoxDecoration(color: Color.fromARGB(0, 0, 0, 0)),
                        padding: EdgeInsets.only(),
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                              fontSize: 42, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(bottom: 100, left: 40),
                child: Text(
                  'Create an account',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 40, right: 40),
                child: TextField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      labelText: 'Name',
                      hintText: 'Enter your name',
                      hintStyle: TextStyle(fontSize: 13)),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 40, right: 40),
                child: TextField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      labelText: 'Email',
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(fontSize: 13)),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 10, bottom: 80, left: 40, right: 40),
                child: TextField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(fontSize: 13)),
                ),
              ),
              Container(
                  child: Align(
                child: SizedBox(
                  width: 240,
                  child: FlatButton(
                    height: 60,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      'Sign up',
                      style: TextStyle(fontSize: 16),
                    ),
                    color: Color.fromRGBO(6, 130, 130, 1),
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                ),
              )),
              Container(
                padding: EdgeInsets.only(left: 65, top: 10),
                child: Text(
                  'By creating an account, you agreed with our',
                  style: TextStyle(fontSize: 13),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 90),
                      child: Text(
                        'Terms of Use',
                        style: TextStyle(
                            fontSize: 13,
                            decoration: TextDecoration.underline,
                            color: Color.fromRGBO(6, 130, 130, 1)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'and',
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Privacy Policy',
                        style: TextStyle(
                            fontSize: 13,
                            decoration: TextDecoration.underline,
                            color: Color.fromRGBO(6, 130, 130, 1)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
