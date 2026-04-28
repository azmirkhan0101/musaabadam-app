import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/routes/app_pages.dart';

import 'core/assets_gen/fonts.gen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      //splitScreenMode: true, //THIS PROPERTY MAKES HEIGHT UNRESPONSIVE
      builder: (_, child) {
        return GetMaterialApp(
          theme: ThemeData(
              fontFamily: FontFamily.openSans,
          ),
          debugShowCheckedModeBanner: false,
          getPages: AppPages.pages,
          initialRoute: AppRoutes.signInScreen,
        );
      },
    );
  }
}
