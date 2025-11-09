import 'package:get/get.dart';
import 'package:musaab_adam/screens/auth_screens/profile_setup_screen/profile_setup_screen.dart';
import 'package:musaab_adam/screens/auth_screens/signin_screen/signin_screen.dart';
import 'package:musaab_adam/screens/auth_screens/signup_screen/signup_screen.dart';

part '../app_routes/app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.SIGNIN_SCREEN,
      page: () {
        return SignInScreen();
      },
    ),
    GetPage(
      name: AppRoutes.SIGNUP_SCREEN,
      page: () {
        return SignUpScreen();
      },
    ),
    GetPage(
        name: AppRoutes.PROFILE_SETUP_SCREEN,
        page: (){
          return ProfileSetupScreen();
        })
  ];
}
