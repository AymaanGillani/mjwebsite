import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mj_college/NavBar.dart';
import 'package:mj_college/sizes.dart';
import 'package:mj_college/styles.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    Size size = mediaQueryData.size;
    return Scaffold(
      body: Column(
        children: [
          NavBar(),
          FloatingActionButton(onPressed: (){
            print(size.width);
            print(size.height);
          })
        ],
      ),
    );
  }
}
