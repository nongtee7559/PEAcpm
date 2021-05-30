import 'package:cpm/Ulility/customer_appbar.dart';
import 'package:cpm/Ulility/text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenHome extends StatefulWidget {
  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: CustomAppBar(),
      backgroundColor: Colors.grey.shade200,
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [showHeader(size), showMenu(size)],
      ),
    );
  }

  SliverToBoxAdapter showHeader(Size size) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        height: size.height / 2.5,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromRGBO(45, 7, 59, 1), Colors.black]),
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.7), BlendMode.dstATop),
            image: AssetImage('asset/image/new_background_home.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16.0),
            bottomRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Spacer(flex: 3),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(flex: 3),
                Container(
                  width: 100,
                  child: Image.asset('asset/image/s_pea_logo.png'),
                ),
                Spacer(flex: 1),
                Container(
                  height: 30,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                ),
                Spacer(flex: 1),
                Container(
                  child: Text(
                    'Work D',
                    style: wl30Style,
                  ),
                ),
                Spacer(flex: 3),
              ],
            ),
            Spacer(flex: 1),
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('asset/image/user.png'),
            ),
            Spacer(flex: 1),
            Text('Mr.Manager ProjectManager', style: wl17Style),
            Text('5430001', style: wl15Style),
            Text('Field Worker', style: wl15Style)
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter showMenu(Size size) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffAB7A10),
              ),
              alignment: Alignment.center,
              child: MaterialButton(
                padding: EdgeInsets.all(8),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60.0),
                ),
                height: 90.0,
                child: Image.asset('asset/image/CPM.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
