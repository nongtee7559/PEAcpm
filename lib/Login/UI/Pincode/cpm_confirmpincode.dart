import 'package:cpm/Login/UI/Pincode/component/confirmpincode_mobile.dart';
import 'package:cpm/Login/UI/Pincode/component/confirmpincode_tablet.dart';
import 'package:cpm/Ulility/background-image.dart';
import 'package:cpm/Ulility/normal_dialog.dart';
import 'package:cpm/Ulility/text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ConfirmPinCode extends StatefulWidget {
  @override
  _ConfirmPinCodeState createState() => _ConfirmPinCodeState();
}

class _ConfirmPinCodeState extends State<ConfirmPinCode> {
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
              child: ConfirmPincodeScreenMobile(),
            ),
            tablet: Container(
              child: ConfirmPincodeScreenTablet(),
            ),
          ),
        ),
      ],
    );
  }
}
