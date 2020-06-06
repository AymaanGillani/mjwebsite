import 'package:flutter/material.dart';
import 'package:mj_college/colors.dart';
import 'package:mj_college/functions.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    Size size = mediaQueryData.size;
    return Container(
      width: double.infinity,
      height: double.maxFinite,
      color: drawerBackgroundColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 10.0),
          Expanded(
            flex: 19,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'assets/DrawerLogo.png',
                    height: 180.0,
                  ),
                  drawerButtonVertical(size, () {}, 'News and Events'),
                  drawerButtonVertical(size, () {}, 'Mission and Vision'),
                  drawerButtonVertical(size, () {}, 'B-Category Seats'),
                  drawerButtonVertical(size, () {}, 'AITCE'),
                  drawerButtonVertical(size, () {}, 'NIRF'),
                  drawerButtonVertical(size, () {}, 'ARIIA'),
                  drawerButtonVertical(size, () {}, 'IQAC'),
                  drawerButtonVertical(size, () {}, 'Code of Conduct'),
                  drawerButtonVertical(size, () {}, 'Anti-Ragging Measures'),
                  drawerButtonVertical(size, () {}, 'Mandatory Disclosure'),
                  drawerButtonVertical(size, () {}, 'Admission Policy'),
                  drawerButtonVertical(size, () {}, 'Fees Policy'),
                  drawerButtonVertical(size, () {}, 'Reservation Policy'),
                ],
              ),
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
            flex: 80,
            child: SizedBox(
              height: size.height / 5,
              child: HorizontalDrawerMenu(size: size),
            ),
          )
        ],
      ),
    );
  }
}

class HorizontalDrawerMenu extends StatelessWidget {
  const HorizontalDrawerMenu({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    if (size.width > 1360) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          drawerButton(size, () {}, 'COURSES'),
          drawerButton(size, () {}, 'GALLERY'),
          drawerButton(size, () {}, 'LIBRARY'),
          drawerButton(size, () {}, 'STUDENT CORNER'),
          drawerButton(size, () {}, 'STUDENT RESOURCES'),
          drawerButton(size, () {}, 'TUITION FEE(Online)'),
          drawerButton(size, () {}, 'CAREER'),
          drawerButton(size, () {}, 'EXAM CELL'),
          drawerButton(size, () {}, 'CONTACT US'),
        ],
      );
    } else if (size.width < 1360 && size.width > 900) {
      return Wrap(
        children: [
          drawerButton(size, () {}, 'COURSES'),
          drawerButton(size, () {}, 'GALLERY'),
          drawerButton(size, () {}, 'LIBRARY'),
          drawerButton(size, () {}, 'STUDENT CORNER'),
          drawerButton(size, () {}, 'STUDENT RESOURCES'),
          drawerButton(size, () {}, 'TUITION FEE(Online)'),
          drawerButton(size, () {}, 'CAREER'),
          drawerButton(size, () {}, 'EXAM CELL'),
          drawerButton(size, () {}, 'CONTACT US'),
        ],
      );
    } else{
      return Row(
        children: [
          Spacer(),
          FlatButton(
            onPressed: () {},
            child: Icon(
              Icons.menu,
              color: Colors.white,
              size: 35.0,
            ),
          ),
        ],
      );
    }
  }
}
