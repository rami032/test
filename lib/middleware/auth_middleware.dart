import 'package:coffe_shope/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware{


@override
  RouteSettings? redirect(String? route){
  if(sharedpref!.getString("id")!=null){
   return RouteSettings(name: "/home");
  }
}
}