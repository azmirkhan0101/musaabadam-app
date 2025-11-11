import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/bindings/initial_binding/initial_binding.dart';
import 'package:musaab_adam/routes/app_pages/app_pages.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';
import 'package:musaab_adam/utils/assets_gen/fonts.gen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return GetMaterialApp(
          theme: ThemeData(
              fontFamily: FontFamily.openSans,
            //primaryColor: AppColors.white
          ),
          debugShowCheckedModeBanner: false,
          initialBinding: InitialBinding(),
          getPages: AppPages.pages,
          initialRoute: AppRoutes.MAIN_SCREEN,
        );
      },
    );
  }
}
