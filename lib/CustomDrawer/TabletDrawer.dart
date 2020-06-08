import 'package:flutter/material.dart';
import 'package:mj_college/functions.dart';
import 'package:mj_college/lists.dart';

class TabletHorDrawer extends StatelessWidget {
  const TabletHorDrawer({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: createDeskTabHorDrawerElements(horDrawerItems, size),
    );
  }
}