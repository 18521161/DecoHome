//import 'dart:html';
import 'package:DecoHome/Views/FavoritePage.dart';
import 'package:DecoHome/Views/UserPage.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:DecoHome/Views/CategoryPage.dart';
import 'package:DecoHome/Views/HomePage.dart';


class MainPage extends StatefulWidget {
  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  int _selectedIndex = 0;
  //static const TextStyle optionStyle =
  //TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  var _pages=[HomePage(),CategoryPage(),FavoritePage(),UserPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
         child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              //rippleColor: Theme.of(context).accentColor,
              //hoverColor: Theme.of(context).accentColor,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100],
              //color: Colors.black.withOpacity(0.5),
              color: Theme.of(context).hoverColor,
              tabs: [
                GButton(
                  icon: Icons.home_rounded,
                  text: 'Home',
                  backgroundColor: Theme.of(context).accentColor,
                ),
                GButton(
                  icon: Icons.dashboard_rounded,
                  text: 'Category',
                  backgroundColor: Theme.of(context).accentColor,
                ),
                GButton(
                  icon: Icons.favorite_rounded,
                  text: 'Favorite',
                  backgroundColor: Theme.of(context).accentColor,
                ),
                GButton(
                  icon: Icons.people_alt_rounded,
                  text: 'User',
                  backgroundColor: Theme.of(context).accentColor,
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}