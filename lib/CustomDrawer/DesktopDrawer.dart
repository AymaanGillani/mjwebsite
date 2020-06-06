import 'package:flutter/material.dart';
import 'package:mj_college/AlwaysScrollBar.dart';
import 'package:mj_college/functions.dart';

class DesktopHorDrawer extends StatelessWidget {
  const DesktopHorDrawer({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
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
  }
}

class DeskTabVertDrawer extends StatelessWidget {
  const DeskTabVertDrawer({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollViewWithScrollbar(
      scrollbarColor: Colors.white10,
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
          drawerButtonVertical(size, () {}, 'More'),
        ],
      ),
    );
  }
}