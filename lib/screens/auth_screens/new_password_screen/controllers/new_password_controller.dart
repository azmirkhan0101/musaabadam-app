import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewPasswordController extends GetxController{

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  RxBool testBool = false.obs;
}