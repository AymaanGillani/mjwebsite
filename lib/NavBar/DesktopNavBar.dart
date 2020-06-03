import 'package:flutter/material.dart';
import 'package:mj_college/colors.dart';
import 'package:mj_college/functions.dart';
import 'package:mj_college/sizes.dart';

class DesktopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    Size size = mediaQueryData.size;
    return Container(
      width: size.width,
      height: 100,
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
          appBarButton(size, () {}, 'ABOUT'),
          appBarButton(size, () {}, 'ACADEMICS'),
          appBarButton(size, () {}, 'ADMISSIONS'),
          appBarButton(size, () {}, 'DEPARTMENTS'),
          appBarButton(size, () {}, 'PLACEMENTS'),
          appBarButton(size, () {}, 'R & D'),
          appBarButton(size, () {}, 'ALUMINI'),
          ButtonTheme(
            minWidth: size.width / 17,
            child: FlatButton(
              padding: appBarButtonPadding(size),
              child: Icon(
                Icons.search,
                size: size.width / 50,
                color: appBarTextColor,
              ),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
