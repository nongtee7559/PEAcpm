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
      backgroundColor: Colors.black12.withOpacity(0.3),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [showHeader(size), showMenu(size)],
      ),
    );
  }

  SliverToBoxAdapter showHeader(size) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        height: 450,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/image/background_home.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60.0),
            bottomRight: Radius.circular(60.0),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              width: 100,
              child: Image.asset('asset/image/Logo.png'),
            ),
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 40,
              child: CircleAvatar(
                radius: 39,
                backgroundImage: AssetImage('asset/image/user.png'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Mr.Manager ProjectManager', style: wl17Style),
            Text('5430001', style: wl14Style),
            Text('Field Worker', style: wl14Style)
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter showMenu(size) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.all(20.0),
        // color: Colors.orange,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(58, 58, 95, 1),
              ),
              alignment: Alignment.center,
              child: MaterialButton(
                padding: EdgeInsets.all(8),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60.0),
                ),
                height: 90.0,
                child: Text('CPM', style: wl22Style),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
