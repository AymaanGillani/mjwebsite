import 'package:flutter/material.dart';
import 'package:mj_college/CustomDrawer/DesktopDrawer.dart';
import 'package:mj_college/CustomDrawer/MobileDrawer.dart';
import 'package:mj_college/CustomDrawer/TabletDrawer.dart';
import 'package:mj_college/colors.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
    @required this.toggleHorMenu,
    @required this.toggleVertMenu,
    @required this.vertMenuAnimationController,
    @required this.horMenuAnimationController,
  }) : super(key: key);
  final AnimationController vertMenuAnimationController;
  final AnimationController horMenuAnimationController;
  final Function toggleVertMenu;
  final Function toggleHorMenu;
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
            child: VerticalDrawer(
              size: size,
              toggleVertMenu: toggleVertMenu,
              vertMenuAnimationController: vertMenuAnimationController,
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
            flex: 80,
            child: SizedBox(
              height: size.height / 5,
              child: HorizontalDrawerMenu(
                size: size,
                toggleHorMenu: toggleHorMenu,
                horMenuAnimationController: horMenuAnimationController,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class VerticalDrawer extends StatelessWidget {
  const VerticalDrawer({
    Key key,
    @required this.size,
    @required this.toggleVertMenu,
    @required this.vertMenuAnimationController,
  }) : super(key: key);
  final AnimationController vertMenuAnimationController;
  final Function toggleVertMenu;
  final Size size;

  @override
  Widget build(BuildContext context) {
    if (size.width > 900) {
      return DeskTabVertDrawer(size: size);
    } else {
      return MobileVertDrawer(
        toggleVertMenu: toggleVertMenu,
        vertMenuAnimationController: vertMenuAnimationController,
      );
    }
  }
}

class HorizontalDrawerMenu extends StatelessWidget {
  const HorizontalDrawerMenu({
    Key key,
    @required this.size,
    @required this.toggleHorMenu,
    @required this.horMenuAnimationController,
  }) : super(key: key);
  final AnimationController horMenuAnimationController;
  final Function toggleHorMenu;
  final Size size;

  @override
  Widget build(BuildContext context) {
    if (size.width > 1360) {
      return DesktopHorDrawer(size: size);
    } else if (size.width < 1360 && size.width > 900) {
      return TabletHorDrawer(size: size);
    } else {
      return MobileHorDrawer(
        toggleHorMenu: toggleHorMenu,
        horMenuAnimationController: horMenuAnimationController,
      );
    }
  }
}
