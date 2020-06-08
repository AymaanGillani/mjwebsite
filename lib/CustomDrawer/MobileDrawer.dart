import 'package:flutter/material.dart';

class MobileHorDrawer extends StatelessWidget {
  const MobileHorDrawer({
    Key key,
    @required this.toggleHorMenu,
  }) : super(key: key);
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
          child: Icon(
            Icons.menu,
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
  }) : super(key: key);
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
            child: IconButton(
              color: Colors.white,
              splashRadius: 30.0,
              splashColor: Colors.black54,
              icon: Icon(Icons.keyboard_arrow_right),
              onPressed: () {
                toggleVertMenu();
              },
            ),
          ),
        )
      ],
    );
  }
}
