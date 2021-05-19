import 'package:cpm/Login/UI/Pincode/cpm_createpincode.dart';
import 'package:cpm/Ulility/background-image.dart';
import 'package:cpm/Ulility/normal_dialog.dart';
import 'package:cpm/Ulility/text_style.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CPMLogin extends StatefulWidget {
  @override
  _CPMLoginState createState() => _CPMLoginState();
}

class _CPMLoginState extends State<CPMLogin> {
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
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin:
                  EdgeInsets.only(top: 160, bottom: 30, right: 20, left: 20),
              height: size.height / 1.5,
              width: size.width / 1.5,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 6, right: 4, top: 10, bottom: 55),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      "asset/image/Logo.png",
                      width: 250,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                    Container(
                      width: 125,
                      child: Divider(
                        thickness: 3,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Work D',
                      style: wl35Style,
                    ),
                    // Container(
                    //   child: Column(
                    //     children: [],
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, bottom: 10),
                      child: Row(
                        children: [
                          Text(
                            'ลงชื่อเข้าใช้',
                            style: wl22Style,
                          ),
                        ],
                      ),
                    ),
                    TextFormField(
                      style: bl28Style,
                      decoration: InputDecoration(
                        filled: true,
                        // isDense: true,
                        labelText: 'ชื่อผู้ใช้งาน',
                        labelStyle: blw28Style,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(83, 83, 125, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      style: bl28Style,
                      decoration: InputDecoration(
                        filled: true,
                        // isDense: true,
                        labelText: 'รหัสผ่าน',
                        labelStyle: blw28Style,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(83, 83, 125, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Container(
                      width: size.width * 1,
                      child: RaisedButton(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Text(
                            'เข้าสู่ระบบ',
                            style: wl30Style,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreatePinCode(),
                            ),
                          );
                        },
                        color: Color.fromRGBO(83, 83, 125, 1),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            normalDialogrequirementTablet(
                                context,
                                'ลืมรหัสผ่าน',
                                'ติดต่อระบบหน่วยข้อมูลส่วนกลางเพื่อขอ\nรหัสผ่านในการเข้าใช้ระบบอีกครั้ง');
                          },
                          child: Text(
                            'ลืมรหัสผ่าน ?',
                            style: wl22Style,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget showMobile(Size size) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              margin:
                  EdgeInsets.only(top: 160, bottom: 30, right: 20, left: 20),
              // height: size.height / 2,
              width: size.width / 1,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 6, right: 4, top: 10, bottom: 55),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset("asset/image/Logo.png"),
                    Container(
                      width: 125,
                      child: Divider(
                        thickness: 3,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Work D',
                      style: wl30Style,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 10),
                      child: Row(
                        children: [
                          Text(
                            'ลงชื่อเข้าใช้',
                            style: wl14Style,
                          ),
                        ],
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        isDense: true,
                        labelText: 'ชื่อผู้ใช้งาน',
                        labelStyle: bl14Style,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(83, 83, 125, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        isDense: true,
                        labelText: 'รหัสผ่าน',
                        labelStyle: bl14Style,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(83, 83, 125, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 400,
                      child: RaisedButton(
                        child: Text(
                          'เข้าสู่ระบบ',
                          style: wl14Style,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreatePinCode(),
                            ),
                          );
                        },
                        color: Color.fromRGBO(83, 83, 125, 1),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            normalDialogrequirement(context, 'ลืมรหัสผ่าน',
                                'ติดต่อระบบหน่วยข้อมูลส่วนกลางเพื่อขอรหัสผ่านในการเข้าใช้ระบบอีกครั้ง');
                          },
                          child: Text(
                            'ลืมรหัสผ่าน ?',
                            style: wl22Style,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
