import 'package:cpm/Home/myHome.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final List _screens = [
    Scaffold(),
    Scaffold(),
    ScreenHome(),
    Scaffold(),
    Scaffold()
  ];

  final List title = [
    Text('Profile'),
    Text('Report'),
    Text('Home'),
    Text('Notification'),
    Text('Setting')
  ];
  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: ScreenTypeLayout(
        mobile: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: [
            Icons.account_circle,
            Icons.import_contacts_outlined,
            Icons.home,
            Icons.notifications_outlined,
            Icons.settings_outlined
          ]
              .asMap()
              .map(
                (key, value) => MapEntry(
                  key,
                  BottomNavigationBarItem(
                    title: _currentIndex == key ? Text('') : title[key],
                    icon: Container(
                      width: 50,
                      height: 50,
                      decoration: _currentIndex == key
                          ? BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(58, 58, 95, 1))
                          : null,
                      child: Icon(value),
                    ),
                  ),
                ),
              )
              .values
              .toList(),
        ),
        tablet: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          elevation: 0.0,
          iconSize: 45,
          items: [
            Icons.account_circle,
            Icons.import_contacts_outlined,
            Icons.home,
            Icons.notifications_outlined,
            Icons.settings_outlined
          ]
              .asMap()
              .map(
                (key, value) => MapEntry(
                  key,
                  BottomNavigationBarItem(
                    title: _currentIndex == key ? Text('') : title[key],
                    icon: Container(
                      width: 60,
                      height: 60,
                      decoration: _currentIndex == key
                          ? BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(58, 58, 95, 1))
                          : null,
                      child: Icon(value),
                    ),
                  ),
                ),
              )
              .values
              .toList(),
        ),
      ),
    );
  }
}
