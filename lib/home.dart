import 'package:flutter/material.dart';
import 'package:mj_college/NavBar/NavBar.dart';

class Home extends StatefulWidget {
  Home({this.toggle});
  final Function toggle;
  @override
  _HomeState createState() => _HomeState(toggle: toggle);
}

class _HomeState extends State<Home> {
  _HomeState({this.toggle});
  final Function toggle;
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    Size size = mediaQueryData.size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(1.0, 0.0),
              blurRadius: 50.0,
            ),
          ],
        ),
        child: Column(
          children: [
            NavBar(),
            FloatingActionButton(onPressed: () {
              print(size.width);
              print(size.height);
            }),
            FloatingActionButton(onPressed: () {
              toggle();
            }),
          ],
        ),
      ),
    );
  }
}
