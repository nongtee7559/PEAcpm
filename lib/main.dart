import 'dart:async';

import 'package:cpm/Home/component/button_nav_screen.dart';
import 'package:cpm/Login/screen_Login.dart';
import 'package:cpm/Ulility/background-image.dart';
import 'package:cpm/Ulility/constants.dart';
import 'package:cpm/Ulility/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'Home/component/background-homeimage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: primaryColor, fontFamily: 'NotoSansThai'),
      title: 'CPM Demo',
      home: MyFirstpage(),
      // home: BackgroundHomeImage(),
    );
  }
}

class MyFirstpage extends StatefulWidget {
  @override
  _MyFirstpageState createState() => _MyFirstpageState();
}

class _MyFirstpageState extends State<MyFirstpage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => ScreenLogin(),
          ),
          (route) => false),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Color.fromRGBO(58, 58, 95, 1).withOpacity(0.55),
          body: ScreenTypeLayout(
            mobile: showMobile(size),
            tablet: showTablet(size),
          ),
        ),
      ],
    );
  }

  Widget showTablet(Size size) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ยินดีตอนรับ',
                style: wl30Style,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/image/l_pea_logo.png',
                width: 250,
                height: 100,
                fit: BoxFit.fill,
              ),
              SpinKitCircle(
                color: Colors.white,
                size: 45.0,
              )
            ],
          ),
        ),
        Container(
          width: 250,
          child: Divider(
            thickness: 5,
            color: Colors.white,
          ),
        ),
        Image.asset('asset/image/WorkD.png')
      ],
    );
  }

  Widget showMobile(Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(
              flex: 7,
            ),
            Text(
              'ยินดีต้อนรับ',
              style: wl30Style,
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Image.asset('asset/image/l_pea_logo.png'),
            ),
            Spacer(),
            Container(
              width: 173,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
            ),
            Spacer(),
            Image.asset('asset/image/WorkD.png'),
            Spacer(),
            SpinKitCircle(
              color: Colors.white,
              size: 25.0,
            ),
            Spacer(
              flex: 7,
            ),
          ],
        ),
      ],
    );
  }

  // Widget showMobile(Size size) {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Padding(
  //         padding: const EdgeInsets.only(bottom: 20),
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Text(
  //               'ยินดีตอนรับ',
  //               style: wl30Style,
  //             ),
  //           ],
  //         ),
  //       ),
  //       Padding(
  //         padding: const EdgeInsets.only(bottom: 20),
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Image.asset('asset/image/s_pea_logo.png'),
  //             SpinKitCircle(
  //               color: Colors.white,
  //               size: 25.0,
  //             )
  //           ],
  //         ),
  //       ),
  //       Container(
  //         width: 125,
  //         child: Divider(
  //           thickness: 3,
  //           color: Colors.white,
  //         ),
  //       ),
  //       Image.asset('asset/image/WorkD.png')
  //     ],
  //   );
  // }
}
