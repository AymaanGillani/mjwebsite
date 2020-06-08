import 'package:flutter/material.dart';
import 'package:mj_college/AlwaysScrollBar.dart';
import 'package:mj_college/functions.dart';
import 'package:mj_college/lists.dart';

class DesktopHorDrawer extends StatelessWidget {
  const DesktopHorDrawer({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: createDeskTabHorDrawerElements(horDrawerItems, size),
    );
  }
}

class DeskTabVertDrawer extends StatelessWidget {
  const DeskTabVertDrawer({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollViewWithScrollbar(
      scrollbarColor: Colors.white10,
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: createDeskTabVertDrawerElements(vertDrawerItems),
      ),
    );
  }
}