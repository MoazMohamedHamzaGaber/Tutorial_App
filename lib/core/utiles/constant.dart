import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData buildThemeDate()=>ThemeData(
  scaffoldBackgroundColor: Colors.white,
  appBarTheme:  AppBarTheme(
    iconTheme: IconThemeData(
      color: Colors.grey[600],
    ),
    titleTextStyle: const TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    elevation: 0,
    backgroundColor: Colors.white,
  ),
);

Widget buildButtonNavBar()=>BottomNavigationBar(
  elevation: 0,
  backgroundColor: Colors.white,
  selectedItemColor: Colors.blue,
  unselectedItemColor: Colors.grey,
  items: const [
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.home),
        label: 'Home'
    ),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.search),
        label: 'Search'
    ),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.heart),
        label: 'Favorites'
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.message),
        label: 'Messages'
    ),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.person),
        label: 'Profile'
    ),
  ],
);