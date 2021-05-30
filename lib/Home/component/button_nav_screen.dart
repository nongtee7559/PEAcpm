import 'package:cpm/Home/myHome.dart';
import 'package:cpm/Ulility/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

  final List title = ['Profile', 'Report', 'Home', 'Notification', 'Setting'];
  final List icons = [
    'asset/icons/profile.svg',
    'asset/icons/report.svg',
    'asset/icons/home.svg',
    'asset/icons/notification.svg',
    'asset/icons/settings.svg'
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
          items: icons
              .asMap()
              .map(
                (key, value) => MapEntry(
                  key,
                  buildBottomNavigationBarItem(key, value, 50, 13),
                ),
              )
              .values
              .toList(),
        ),
        tablet: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
          type: BottomNavigationBarType.fixed,
          elevation: 0.0,
          iconSize: 45,
          items: icons
              .asMap()
              .map(
                (key, value) => MapEntry(
                    key, buildBottomNavigationBarItem(key, value, 60, 10)),
              )
              .values
              .toList(),
        ),
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
      int key, String pathIcon, double sizeBtn, double sizeIcon) {
    return BottomNavigationBarItem(
      title: _currentIndex == key
          ? Text('')
          : Text(
              title[key],
              style: TextStyle(color: primaryColor),
            ),
      icon: Container(
        width: sizeBtn,
        height: sizeBtn,
        decoration: _currentIndex == key
            ? BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xffad8db9), Color(0xff7f3e98)]),
                shape: BoxShape.circle)
            : null,
        child: Padding(
            padding: new EdgeInsets.all(sizeIcon),
            child: SvgPicture.asset(
              pathIcon,
              color: _currentIndex == key ? Colors.white : Color(0xff7F3E98),
            )),
      ),
    );
  }
}
