import 'package:flutter/material.dart';

double sizeOfAppbar(Size size){
  return size.height*13/100;
}

EdgeInsetsGeometry appBarButtonPadding(Size size){
  return EdgeInsets.symmetric(vertical: sizeOfAppbar(size)/3,horizontal: sizeOfAppbar(size)/10);
}

Size searchBoxSize(Size size){
  return Size(size.width/10,sizeOfAppbar(size)/2);
}