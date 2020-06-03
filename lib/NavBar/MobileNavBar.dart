import 'package:flutter/material.dart';
import 'package:mj_college/colors.dart';
import 'package:mj_college/sizes.dart';

class MobileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    Size size = mediaQueryData.size;
    return Container(
      width: size.width,
      height: 70,
      decoration: BoxDecoration(
        color: appBarBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[700],
            offset: Offset(0.0, 1.0),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/testlogo.png',
          ),
          Spacer(),
          FlatButton(
            padding: appBarButtonPadding(size),
            onPressed: () {},
            child: Icon(
              Icons.menu,
              color: appBarTextColor,
              size: 35.0,
            ),
          ),
        ],
      ),
    );
  }
}