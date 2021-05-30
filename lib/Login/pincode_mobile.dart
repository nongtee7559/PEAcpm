import 'package:cpm/Home/component/button_nav_screen.dart';
import 'package:cpm/Ulility/constants.dart';
import 'package:cpm/Ulility/normal_dialog.dart';
import 'package:cpm/Ulility/text_style.dart';
import 'package:flutter/material.dart';

import 'UI/Login/cpm_login.dart';
import 'UI/Pincode/component/circle.dart';

class PincodeMobile extends StatefulWidget {
  @override
  _PincodeMobileState createState() => _PincodeMobileState();
}

class _PincodeMobileState extends State<PincodeMobile> {
  List<String> currentPin = ["", "", "", "", "", "", ""];

  var outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide(color: Colors.transparent),
  );
  int pinIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        // buildExitButton(),
        IconButton(
            icon: Image.asset('asset/image/s_pea_logo.png'),
            iconSize: 140,
            onPressed: () {}),
        Container(
          alignment: Alignment(0, 0.5),
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildSecurityText(),
              SizedBox(
                height: 60.0,
              ),
              buildPinRow(),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                onPressed: () {
                  normalDialogrequirement(context, 'ลืม PIN code',
                      'ติดต่อระบบหน่วยข้อมูลส่วนกลางเพื่อขอรหัสผ่านในการเข้าใช้ระบบอีกครั้ง');
                },
                child: Text(
                  'ลืมรหัส PIN code ?',
                  style: wl14Style,
                ),
              ),
              // TextButton(
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => CPMLogin(),
              //       ),
              //     );
              //   },
              //   child: Text(
              //     'สร้าง PIN code',
              //     style: wl14Style,
              //   ),
              // ),
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
                    width: 60.0,
                    child: IconButton(
                        icon: Icon(
                          Icons.backspace,
                          color: Colors.white,
                          size: 30,
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
    // setPin(pinIndex, text);
    setState(() {
      currentPin[pinIndex - 1] = text;
    });
    String strPin = "";
    currentPin.forEach((element) {
      strPin += element;
    });
    if (pinIndex == 6)
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => BottomNavScreen()),
          (route) => false);
  }

  buildPinRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (int i = 0; i < 6; i++)
          Container(
            margin: EdgeInsets.all(8),
            child: Circle(
              filled: currentPin[i] != "",
            ),
          )
      ],
    );
  }

  clearPin() {
    if (pinIndex == 0)
      pinIndex = 0;
    else if (pinIndex == 6) {
      setState(() {
        currentPin[pinIndex - 1] = "";
        pinIndex--;
      });
    } else {
      setState(() {
        currentPin[pinIndex - 1] = "";
        pinIndex--;
      });
    }
  }

  buildSecurityText() {
    return Text(
      "กรุณากรอก PIN code",
      style: wl17Style,
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
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(Icons.clear, color: Colors.white),
          ),
        )
      ],
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
      width: 60,
      height: 60,
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
          style: TextStyle(
              fontFamily: 'NotoSansThai',
              color: Colors.white,
              fontSize: 30 * MediaQuery.of(context).textScaleFactor),
        ),
      ),
    );
  }
}
