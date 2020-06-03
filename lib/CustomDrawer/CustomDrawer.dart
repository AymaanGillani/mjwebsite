import 'package:flutter/material.dart';
import 'package:mj_college/CustomDrawer/MyDrawer.dart';
import 'package:mj_college/home.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
  }

  void toggleDrawer() => animationController.isDismissed
      ? animationController.forward()
      : animationController.reverse();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, _) {
        double scalex=1-(animationController.value*0.2);
        double scaley=1-(animationController.value*0.1);
        return Stack(
          children: [
            MyDrawer(),
            Transform(
              transform: Matrix4.identity()..scale(scalex, scaley),
              alignment: Alignment.bottomRight,
              child: Home(toggle: toggleDrawer,),
            ),
          ],
        );
      },
    );
  }
}
