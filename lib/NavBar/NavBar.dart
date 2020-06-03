import 'package:flutter/material.dart';
import 'package:mj_college/NavBar/DesktopNavBar.dart';
import 'package:mj_college/NavBar/MobileNavBar.dart';
import 'package:mj_college/NavBar/TabletNavBar.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopNavBar();
      } else if (constraints.maxWidth > 900 && constraints.maxWidth < 1200) {
        return TabletNavBar();
      } else {
        return MobileNavBar();
      }
    });
  }
}