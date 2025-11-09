import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  RxBool testBool = false.obs;
}