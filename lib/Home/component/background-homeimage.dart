import 'package:flutter/material.dart';

class BackgroundHomeImage extends StatefulWidget {
  @override
  _BackgroundHomeImageState createState() => _BackgroundHomeImageState();
}

class _BackgroundHomeImageState extends State<BackgroundHomeImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('asset/image/background_home.png'),
            fit: BoxFit.contain),
      ),
    );
  }
}
