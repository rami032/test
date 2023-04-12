import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../model/sub.dart';
import '../../model/themes.dart';



Widget TextProdact(String title,double fontSize,Color color){
  return Text(title,style: TextStyle(fontSize:fontSize,color:color),);
}

Widget TextSub(int index,String sub,Color color )
{
  return Text(
    categories[index][sub]!,
    style: TextStyle(
      fontSize: 20,
      color:color,
      fontWeight: FontWeight.bold,
    ),
  );
}