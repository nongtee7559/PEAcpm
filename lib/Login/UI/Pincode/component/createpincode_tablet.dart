import 'package:cpm/Home/component/button_nav_screen.dart';
import 'package:cpm/Login/UI/Login/cpm_login.dart';
import 'package:cpm/Ulility/normal_dialog.dart';
import 'package:cpm/Ulility/text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../cpm_confirmpincode.dart';

class CreatePincodeScreenTablet extends StatefulWidget {
  @override
  _CreatePincodeScreenTabletState createState() =>
      _CreatePincodeScreenTabletState();
}

class _CreatePincodeScreenTabletState extends State<CreatePincodeScreenTablet> {
  List<String> currentPin = ["", "", "", "", "", "", ""];
  TextEditingController pinOneController = TextEditingController();
  TextEditingController pinTwoController = TextEditingController();
  TextEditingController pinThreeController = TextEditingController();
  TextEditingController pinFourController = TextEditingController();
  TextEditingController pinFiveController = TextEditingController();
  TextEditingController pinSixController = TextEditingController();

  var outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide(color: Colors.transparent),
  );
  int pinIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        //  buildExitButton(),
        SizedBox(
          height: 100,
        ),
        Image.asset(
          'asset/image/Logo.png',
          width: 250,
          height: 100,
          fit: BoxFit.fill,
        ),
        // IconButton(
        //     icon: Image.asset('asset/image/Logo.png'),
        //     iconSize: 200,
        //     onPressed: () {}),
        Container(
          alignment: Alignment(0, 0.5),
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 30.0,
              ),
              buildSecurityText(),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              buildPinRow(),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),

        buildNumberPad(),
      ]),
    );
  }

  buildNumberPad() {
    return Expanded(
      child: Container(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  KeyboardNumber(
                    n: 1,
                    onPressed: () {
                      pinIndexSetup("1");
                    },
                  ),
                  KeyboardNumber(
                    n: 2,
                    onPressed: () {
                      pinIndexSetup("2");
                    },
                  ),
                  KeyboardNumber(
                    n: 3,
                    onPressed: () {
                      pinIndexSetup("3");
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  KeyboardNumber(
                    n: 4,
                    onPressed: () {
                      pinIndexSetup("4");
                    },
                  ),
                  KeyboardNumber(
                    n: 5,
                    onPressed: () {
                      pinIndexSetup("5");
                    },
                  ),
                  KeyboardNumber(
                    n: 6,
                    onPressed: () {
                      pinIndexSetup("6");
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  KeyboardNumber(
                    n: 7,
                    onPressed: () {
                      pinIndexSetup("7");
                    },
                  ),
                  KeyboardNumber(
                    n: 8,
                    onPressed: () {
                      pinIndexSetup("8");
                    },
                  ),
                  KeyboardNumber(
                    n: 9,
                    onPressed: () {
                      pinIndexSetup("9");
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 60.0,
                    child: MaterialButton(
                      onPressed: null,
                      child: SizedBox(),
                    ),
                  ),
                  KeyboardNumber(
                    n: 0,
                    onPressed: () {
                      pinIndexSetup("0");
                    },
                  ),
                  Container(
                    width: 70.0,
                    child: IconButton(
                        icon: Icon(
                          Icons.backspace,
                          color: Colors.white,
                          size: 60,
                        ),
                        onPressed: () {
                          clearPin();
                          // normalDialog(context, "เรียบร้อย",
                          //     'ระบบได้ทำการบันทึก PIN code ของคุณกรุณาเลือกยืนยันเพื่อเข้าสู่หน้าหลัก');
                        }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  pinIndexSetup(String text) {
    if (pinIndex == 0)
      pinIndex = 1;
    else if (pinIndex < 6) pinIndex++;
    setPin(pinIndex, text);
    currentPin[pinIndex - 1] = text;
    String strPin = "";
    currentPin.forEach((element) {
      strPin += element;
    });
    if (pinIndex == 6)
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => ConfirmPinCode()),
          (route) => false);
  }

  setPin(int n, String text) {
    switch (n) {
      case 1:
        pinOneController.text = text;
        break;
      case 2:
        pinTwoController.text = text;
        break;
      case 3:
        pinThreeController.text = text;
        break;
      case 4:
        pinFourController.text = text;
        break;
      case 5:
        pinFiveController.text = text;
        break;
      case 6:
        pinSixController.text = text;
        break;
      default:
    }
  }

  buildPinRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PINNumber(
          outlineInputBorder: outlineInputBorder,
          textEditingController: pinOneController,
        ),
        PINNumber(
          outlineInputBorder: outlineInputBorder,
          textEditingController: pinTwoController,
        ),
        PINNumber(
          outlineInputBorder: outlineInputBorder,
          textEditingController: pinThreeController,
        ),
        PINNumber(
          outlineInputBorder: outlineInputBorder,
          textEditingController: pinFourController,
        ),
        PINNumber(
          outlineInputBorder: outlineInputBorder,
          textEditingController: pinFiveController,
        ),
        PINNumber(
          outlineInputBorder: outlineInputBorder,
          textEditingController: pinSixController,
        ),
      ],
    );
  }

  clearPin() {
    if (pinIndex == 0)
      pinIndex = 0;
    else if (pinIndex == 6) {
      setPin(pinIndex, "");
      currentPin[pinIndex - 1] = "";
      pinIndex--;
    } else {
      setPin(pinIndex, "");
      currentPin[pinIndex - 1] = "";
      pinIndex--;
    }
  }

  buildSecurityText() {
    return Text(
      "สร้าง PIN Code ตัวเลข 6 หลัก",
      style: wl30Style,
    );
  }

  buildExitButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            onPressed: () {},
            height: 50.0,
            minWidth: 50.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80),
            ),
            child: Icon(Icons.clear, color: Colors.white),
          ),
        )
      ],
    );
  }
}

class PINNumber extends StatelessWidget {
  final TextEditingController textEditingController;
  final OutlineInputBorder outlineInputBorder;
  PINNumber({this.outlineInputBorder, this.textEditingController});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65.0,
      height: 65.0,
      child: TextFormField(
        controller: textEditingController,
        enabled: false,
        obscureText: true,
        style: wl55Style,
        obscuringCharacter: '*',
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          isDense: true,
            contentPadding: EdgeInsets.all(0),
            //  borderRadius: BorderRadius.circular(10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(40.0),
              ),
            ),
            filled: true,
            fillColor: Colors.white30),
      ),
    );
  }
}

class KeyboardNumber extends StatelessWidget {
  const KeyboardNumber({Key key, this.n, this.onPressed}) : super(key: key);
  final int n;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.2),
      ),
      alignment: Alignment.center,
      child: MaterialButton(
        padding: EdgeInsets.all(8),
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60.0),
        ),
        height: 90.0,
        child: Text(
          '$n',
          style: GoogleFonts.kanit(
              color: Colors.white,
              fontSize: 50 * MediaQuery.of(context).textScaleFactor),
        ),
      ),
    );
  }
}
