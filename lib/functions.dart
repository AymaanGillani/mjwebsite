import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mj_college/sizes.dart';
import 'package:mj_college/styles.dart';

FlatButton appBarButton(Size size, Function function, String name) {
  double appBarFontSize = (size.width - 100.0) / 75;
  return FlatButton(
    padding: appBarButtonPadding(size),
    child: Text(
      name,
      style: GoogleFonts.getFont(
        'Roboto',
        textStyle: appbarButtonText.copyWith(fontSize: appBarFontSize),
      ),
    ),
    onPressed: function,
  );
}

FlatButton appBarButton2(Size size, Function function, String name) {
  return FlatButton(
    child: Text(
      name,
      style: GoogleFonts.getFont(
        'Roboto',
        textStyle: appbarButtonText/*.copyWith(fontSize: appBarFontSize)*/,
      ),
    ),
    onPressed: function,
  );
}


