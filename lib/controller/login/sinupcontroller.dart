import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  TextEditingController emaillog(){
   return _emailController;
  }
  TextEditingController passwordlog(){
    return _passwordController;
  }
}

class SignupController extends GetxController{
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  TextEditingController emailSing(){
    return _emailController;
  }
  TextEditingController passwordSing(){
    return _passwordController;
  }
  TextEditingController nameSing(){
    return _nameController;
  }
}