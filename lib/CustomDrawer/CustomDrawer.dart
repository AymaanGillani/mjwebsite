import 'package:flutter/material.dart';
import 'package:mj_college/AlwaysScrollBar.dart';
import 'package:mj_college/CustomDrawer/MyDrawer.dart';
import 'package:mj_college/functions.dart';
import 'package:mj_college/home.dart';
import 'package:mj_college/lists.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer>
    with TickerProviderStateMixin {
  AnimationController animationController;
  AnimationController horMenuAnimationController;
  AnimationController vertMenuAnimationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    horMenuAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
    vertMenuAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
  }

  void toggleDrawer() {
    horMenuAnimationController.value = 0;
    vertMenuAnimationController.value = 0;
    animationController.isDismissed
        ? animationController.forward()
        : animationController.reverse();
  }

  void toggleHorMenu() {
    vertMenuAnimationController.value = 0;
    horMenuAnimationController.isDismissed
        ? horMenuAnimationController.forward()
        : horMenuAnimationController.reverse();
  }

  void toggleVertMenu() {
    horMenuAnimationController.value = 0;
    vertMenuAnimationController.isDismissed
        ? vertMenuAnimationController.forward()
        : vertMenuAnimationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    bool mobile = false;
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    Size size = mediaQueryData.size;
    toggleDrawer();
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, _) {
        double scalex = 1 - (animationController.value * 0.2);
        double scaley = 1 - (animationController.value * 0.2);
        return Stack(
          children: [
            MyDrawer(
              toggleHorMenu: toggleHorMenu,
              toggleVertMenu: toggleVertMenu,
            ),
            Transform(
              transform: Matrix4.identity()..scale(scalex, scaley),
              alignment: Alignment.bottomRight,
              child: Home(/*toggle: toggleDrawer,*/),
            ),
            VertDrawerMenu(
              vertMenuAnimationController: vertMenuAnimationController,
              size: size,
            ),
            HorDrawerMenu(
              horMenuAnimationController: horMenuAnimationController,
              size: size,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: FloatingActionButton(
                  onPressed: () {
                    toggleDrawer();
                  },
                  child: Icon(Icons.branding_watermark),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class VertDrawerMenu extends StatelessWidget {
  const VertDrawerMenu({
    Key key,
    @required this.vertMenuAnimationController,
    @required this.size,
  }) : super(key: key);

  final AnimationController vertMenuAnimationController;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: vertMenuAnimationController,
      builder: (context, _) {
        return Align(
          alignment: Alignment.topLeft,
          child: Row(
            children: [
              SizedBox(width: size.width * 0.2),
              Column(
                children: [
                  SizedBox(height: size.height * 0.2),
                  SizedBox(
                    width: vertMenuAnimationController.value * size.width * 0.8,
                    child: SizedBox(
                      width: size.width * 0.8,
                      height: size.height * 0.8,
                      child: Container(
                        color: Colors.blue,
                        child: SingleChildScrollViewWithScrollbar(
                          scrollbarColor: Colors.white10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children:
                                createMobileVertDrawerElements(vertDrawerItems),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class HorDrawerMenu extends StatelessWidget {
  const HorDrawerMenu({
    Key key,
    @required this.horMenuAnimationController,
    @required this.size,
  }) : super(key: key);

  final AnimationController horMenuAnimationController;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: horMenuAnimationController,
      builder: (context, _) {
        return Align(
          alignment: Alignment.topRight,
          child: Column(
            children: [
              SizedBox(height: size.height * 0.2),
              SizedBox(
                height: horMenuAnimationController.value * size.height * 0.8,
                child: SizedBox(
                  width: size.width * 0.8,
                  child: Container(
                    color: Colors.blue,
                    child: SingleChildScrollViewWithScrollbar(
                      scrollbarColor: Colors.white10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: createMobileHorDrawerElements(horDrawerItems),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
