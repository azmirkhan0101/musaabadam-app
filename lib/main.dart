import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:musaab_adam/main_app.dart';
import 'package:musaab_adam/modules/auth/controllers/auth_controller.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  Get.put(AuthController(), permanent: true);
  runApp(  MainApp() );
}

