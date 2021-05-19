import 'package:cpm/Login/UI/Pincode/component/createpincode_tablet.dart';
import 'package:cpm/Ulility/background-image.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'component/createpincode_moblie.dart';

class CreatePinCode extends StatefulWidget {
  @override
  _CreatePinCodeState createState() => _CreatePinCodeState();
}

class _CreatePinCodeState extends State<CreatePinCode> {
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
              child: CreatePincodeScreenMobile(),
            ),
            tablet: Container(
              child: CreatePincodeScreenTablet(),
            ),
          ),
        ),
      ],
    );
  }
}
