import 'package:flutter/material.dart';
Widget Container1(var height, double? width, var circular,var Opacity ,var spreadRadius, var blurRadius , var  Offset1,var Offset2,Widget child1){

  return Container(
    height: height,
    width: width ,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(circular),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(Opacity),
          spreadRadius: spreadRadius,
          blurRadius: blurRadius,
          offset: Offset(Offset1, Offset2), // changes position of shadow
        ),
      ],
    ),
    child:child1 ,

  );

}