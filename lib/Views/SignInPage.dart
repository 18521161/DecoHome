import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:DecoHome/Views/ForgotPasswordPage.dart';
import 'package:DecoHome/Views/SignUpPage.dart';
import 'package:DecoHome/Views/MainPage.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 50),
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 40),
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 10, left: 30),
                      child: FlatButton(
                        minWidth: 110,
                        height: 2,
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
                        'Hello',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(bottom: 100, left: 40),
              child: Text(
                'Sign in to your account',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40),
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
                  EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40),
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
                padding: EdgeInsets.only(bottom: 70, left: 210),
                child: FlatButton(
                  child: Text(
                    'Forgot your password',
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(6, 130, 130, 50),
                        decoration: TextDecoration.underline),
                  ),
                  onPressed: () {
                    print('forgot');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPassword(),
                        ));
                  },
                )),
            Container(
                child: Align(
              child: SizedBox(
                width: 240,
                child: FlatButton(
                  height: 60,
                  minWidth: 240,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    'Log in',
                    style: TextStyle(fontSize: 16),
                  ),
                  color: Color.fromRGBO(6, 130, 130, 50),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainPage(),
                            ));
                  },
                ),
              ),
            )),
            Container(
                child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 100),
                  child: Text(
                    'Don\'t have an account?',
                    style: TextStyle(fontSize: 13),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 5),
                    child: FlatButton(
                      padding: EdgeInsets.only(right: 45),
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            fontSize: 13,
                            decoration: TextDecoration.underline,
                            color: Color.fromRGBO(6, 130, 130, 1)),
                      ),
                      onPressed: () {
                        print('sign up');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ));
                      },
                    ))
              ],
            )),
          ],
        )),
      ),
    );
  }
}

