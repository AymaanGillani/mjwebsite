import 'package:flutter/material.dart';
import 'package:mj_college/colors.dart';
import 'package:mj_college/functions.dart';

class TabletNavBar extends StatelessWidget {
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
          SizedBox(
            width: size.width / (13 / 7),
            child: Wrap(
              direction: Axis.horizontal,
              children: [
                appBarButton2(size, () {}, 'ABOUT'),
                appBarButton2(size, () {}, 'ACADEMICS'),
                appBarButton2(size, () {}, 'ADMISSIONS'),
                appBarButton2(size, () {}, 'DEPARTMENTS'),
                appBarButton2(size, () {}, 'PLACEMENTS'),
                appBarButton2(size, () {}, 'R & D'),
                appBarButton2(size, () {}, 'ALUMINI'),
                ButtonTheme(
                  minWidth: size.width / 17,
                  child: FlatButton(
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
          ),
        ],
      ),
    );
  }
}
