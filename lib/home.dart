import 'package:flutter/material.dart';
import 'package:mj_college/NavBar/NavBar.dart';

class Home extends StatefulWidget {
  // Home({this.toggle});
  // final Function toggle;
  @override
  _HomeState createState() => _HomeState(/*toggle: toggle*/);
}

class _HomeState extends State<Home> {
  // _HomeState({this.toggle});
  // final Function toggle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavBar(),
            // FloatingActionButton(onPressed: () {
            //   print(size.width);
            //   print(size.height);
            // }),
          ],
        ),
      ),
    );
  }
}
