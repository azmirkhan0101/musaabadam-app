import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:musaab_adam/main_app.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  runApp(  MainApp() );
}

