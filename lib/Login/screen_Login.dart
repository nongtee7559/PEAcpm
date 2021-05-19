import 'package:cpm/Login/pincode_mobile.dart';
import 'package:cpm/Login/pincode_tablet.dart';
import 'package:cpm/Ulility/background-image.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ScreenLogin extends StatefulWidget {
  @override
  _ScreenLoginState createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Color.fromRGBO(58, 58, 95, 1).withOpacity(0.55),
          body: ScreenTypeLayout(
            mobile: Container(
              child: PincodeMobile(),
            ),
            tablet: Container(
              child: PincodeTablet(),
            ),
          ),
        ),
      ],
    );
  }
}
