import 'package:flutter/material.dart';
import 'dart:math';

class MobileHorDrawer extends StatelessWidget {
  const MobileHorDrawer({
    Key key,
    @required this.toggleHorMenu,
    @required this.horMenuAnimationController,
  }) : super(key: key);
  final AnimationController horMenuAnimationController;
  final Function toggleHorMenu;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Spacer(),
        FlatButton(
          onPressed: () {
            toggleHorMenu();
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: horMenuAnimationController,
            color: Colors.white,
            size: 35.0,
          ),
        ),
      ],
    );
  }
}

class MobileVertDrawer extends StatelessWidget {
  const MobileVertDrawer({
    Key key,
    @required this.toggleVertMenu,
    @required this.vertMenuAnimationController,
  }) : super(key: key);
  final AnimationController vertMenuAnimationController;
  final Function toggleVertMenu;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'assets/DrawerLogo.png',
          height: 180.0,
        ),
        Expanded(
          child: Material(
            color: Colors.blue,
            child: AnimatedBuilder(
              animation: vertMenuAnimationController,
              builder: (context, _) {
                return Transform.rotate(
                  angle: pi * vertMenuAnimationController.value,
                  child: IconButton(
                    color: Colors.white,
                    splashRadius: 30.0,
                    splashColor: Colors.black54,
                    icon: Icon(Icons.keyboard_arrow_right),
                    onPressed: () {
                      toggleVertMenu();
                    },
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
