import 'package:flutter/material.dart';
import 'package:mj_college/colors.dart';
import 'package:mj_college/lists.dart';
import 'package:mj_college/sizes.dart';
import 'package:mj_college/functions.dart';

class MobileNavBar extends StatefulWidget {
  @override
  _MobileNavBarState createState() => _MobileNavBarState();
}

class _MobileNavBarState extends State<MobileNavBar>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
  }

  void toggleMenuDrawer() => animationController.isDismissed
      ? animationController.forward()
      : animationController.reverse();

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    Size size = mediaQueryData.size;
    return Container(
      width: size.width,
      // height: size.height > 350 ? 70.0 : 50.0,
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
      child: Column(
        children: [
          SizedBox(
            height: size.height > 350 ? 70.0 : 50.0,
            child: Row(
              children: [
                Image.asset(
                  'assets/testlogo.png',
                ),
                Spacer(),
                FlatButton(
                  padding: appBarButtonPadding(size),
                  onPressed: () {
                    setState(() {
                      toggleMenuDrawer();
                    });
                  },
                  child: AnimatedIcon(
                    icon: AnimatedIcons.menu_close,
                    progress: animationController,
                    color: appBarTextColor,
                    size: 35.0,
                  ),
                ),
              ],
            ),
          ),
          MobileNavMenu(animationController: animationController)
        ],
      ),
    );
  }
}

class MobileNavMenu extends StatelessWidget {
  const MobileNavMenu({
    Key key,
    @required this.animationController,
  }) : super(key: key);

  final AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, _) {
        return SizedBox(
          height: animationController.value * 270,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: createMobileNavBarElements(navBarItems),
            ),
          ),
        );
      },
    );
  }
}