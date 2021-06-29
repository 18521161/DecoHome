import 'package:flutter/material.dart';
import 'package:DecoHome/Views/SignInPage.dart';
import 'package:DecoHome/Views/SignUpPage.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        //resizeToAvoidBottomInset: false,
        body: Center(
            child: SafeArea(
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
                              builder: (context) => SignIn(),
                            ));
                        //Navigator.pop(context);
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
                          minWidth: 330,
                          height: 5,
                          color: Color.fromRGBO(6, 130, 130, 1),
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
                          'Forgot password',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10, left: 40),
                child: Text(
                  'Enter your email address and we',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 80, left: 40),
                child: Text(
                  'would send you new password',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 50, bottom: 100, left: 40, right: 40),
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
                  child: Align(
                child: SizedBox(
                  width: 240,
                  child: FlatButton(
                    height: 60,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      'Send new password',
                      style: TextStyle(fontSize: 16),
                    ),
                    color: Color.fromRGBO(6, 130, 130, 1),
                    textColor: Colors.white,
                    onPressed: () {},
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
              ))
            ],
          ),
        )),
      ),
    );
  }
}

