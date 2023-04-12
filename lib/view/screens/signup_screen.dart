import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/login/sinupcontroller.dart';
import '../contant/textfield.dart';

class SignupScreen extends StatelessWidget {
  final Signupcontroller1 = Get.put(SignupController());

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
                child:
                TextField1(context,Signupcontroller1.nameSing(),"name")
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child:TextField1(context,Signupcontroller1.emailSing(),"email")
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                 child: TextField1(context,Signupcontroller1.passwordSing(),"password")),

              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // TODO: implement login logic
                },
                child: Text('SignUp'),
              ),
              SizedBox(height: 40),

            ],
          ),
        ),
      ),
    );
  }
}
