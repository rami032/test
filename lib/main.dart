import 'package:coffe_shope/view/screens/home.dart';
import 'package:coffe_shope/view/screens/login_screen.dart';
import 'package:coffe_shope/view/screens/signup_screen.dart';
import 'package:coffe_shope/view/screens/start.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'controller/login/sinupcontroller.dart';
import 'middleware/auth_middleware.dart';
import 'model/themes.dart';

SharedPreferences? sharedpref;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  sharedpref=await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: Themes.customLightTheme,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: ()=>    Start(),middlewares: [
          AuthMiddleware()
        ]),
        GetPage(name: '/login', page: ()=> LoginScreen()),
        GetPage(name: '/signup', page: ()=> SignupScreen()),
        GetPage(name: '/home', page: ()=> Home()),
      ],
    );
  }
}

