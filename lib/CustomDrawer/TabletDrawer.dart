import 'package:flutter/material.dart';
import 'package:mj_college/functions.dart';

class TabletHorDrawer extends StatelessWidget {
  const TabletHorDrawer({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
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
  }
}