import 'package:get/get.dart';
import 'package:musaab_adam/screens/auth_screens/check_email_screen/check_email_screen.dart';
import 'package:musaab_adam/screens/auth_screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:musaab_adam/screens/auth_screens/new_password_screen/new_password_screen.dart';
import 'package:musaab_adam/screens/auth_screens/profile_setup_screen/profile_setup_screen.dart';
import 'package:musaab_adam/screens/auth_screens/signin_screen/signin_screen.dart';
import 'package:musaab_adam/screens/auth_screens/signup_screen/signup_screen.dart';
import 'package:musaab_adam/screens/email_verification_screens/account_verified_screen/account_verified_screen.dart';
import 'package:musaab_adam/screens/email_verification_screens/link_expired_screen/link_expired_screen.dart';
import 'package:musaab_adam/screens/email_verification_screens/verify_email_screen/verify_email_screen.dart';
import 'package:musaab_adam/screens/main_screen/main_screen.dart';

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
      page: () {
        return ProfileSetupScreen();
      },
    ),
    GetPage(
      name: AppRoutes.FORGOT_PASSWORD_SCREEN,
      page: () {
        return ForgotPasswordScreen();
      },
    ),
    GetPage(
      name: AppRoutes.CHECK_EMAIL_SCREEN,
      page: () {
        return CheckEmailScreen();
      },
    ),
    GetPage(
      name: AppRoutes.NEW_PASSWORD_SCREEN,
      page: () {
        return NewPasswordScreen();
      },
    ),
    GetPage(
      name: AppRoutes.VERIFY_EMAIL_SCREEN,
      page: () {
        return VerifyEmailScreen();
      },
    ),
    GetPage(
      name: AppRoutes.LINK_EXPIRED_SCREEN,
      page: () {
        return LinkExpiredScreen();
      },
    ),
    GetPage(
      name: AppRoutes.ACCOUNT_VERIFIED_SCREEN,
      page: () {
        return AccountVerifiedScreen();
      },
    ),
    GetPage(
      name: AppRoutes.MAIN_SCREEN,
      page: () {
        return MainScreen();
      },
    ),
  ];
}
