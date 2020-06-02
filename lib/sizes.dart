import 'package:flutter/material.dart';

EdgeInsetsGeometry appBarButtonPadding(Size size) {
  if (size.width > 1200) {
    return EdgeInsets.symmetric(vertical: 41, horizontal: size.width / 150);
  }else{
    return EdgeInsets.symmetric(vertical: 21, horizontal: size.width / 150);
  }
}
