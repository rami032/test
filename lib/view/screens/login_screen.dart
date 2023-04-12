import 'package:coffe_shope/view/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/login/sinupcontroller.dart';
import '../../main.dart';
import '../contant/textfield.dart';
import 'home.dart';

class LoginScreen extends StatelessWidget {
  final logcontroller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/login.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        height: screenSize.height,
        width: screenSize.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 450,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child:TextField1(context,logcontroller.emaillog(),"Email")),

              Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField1(context,logcontroller.passwordlog(),"password")),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.to(Home());
                },
                child: Text('Login'),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Get.to(SignupScreen());
                },
                child: Text('Don\'t have an account? Sign up.'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
