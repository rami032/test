import 'package:flutter/material.dart';
Widget TextField1(dynamic context1 ,dynamic controller,String title){

 return TextField(
    cursorColor: Theme.of(context1).primaryColor,
    controller:controller ,
    decoration: InputDecoration(
      labelText: title,
        labelStyle:TextStyle(color: Theme.of(context1).primaryColor ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(color: Theme.of(context1).primaryColor, width: 2),
      ),
    ),
  );
}


Widget TextFieldSearch(dynamic context,var circular,var hintText,Icon Icon1, Function? onPressed1() ){
  return TextField(
    cursorColor: Theme.of(context).primaryColor,
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide:  BorderSide(color: Theme.of(context).primaryColor),
        borderRadius: BorderRadius.circular(circular),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Theme.of(context).primaryColor,
        ),
        borderRadius: BorderRadius.circular(circular),
      ),
      hintText: hintText,
      border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
          borderRadius: BorderRadius.circular(circular)),
      prefixIcon: IconButton(
        icon: Icon1,
        color: Theme.of(context).primaryColor,
        onPressed: onPressed1,
      ),
    ),


  );

}
