import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/bindings/initial_binding.dart';
import 'package:musaab_adam/routes/app_pages.dart';
import 'package:musaab_adam/utils/size_config/size_config.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    SizeConfig.init(context);

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBinding(),
      getPages: AppPages.pages,
      initialRoute: AppRoutes.SIGNIN_PAGE,
    );
  }
}
