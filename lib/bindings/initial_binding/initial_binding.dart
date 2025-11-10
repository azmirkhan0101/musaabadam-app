import 'package:get/get.dart';
import 'package:musaab_adam/screens/auth_screens/check_email_screen/controllers/check_email_controller.dart';
import 'package:musaab_adam/screens/auth_screens/forgot_password_screen/controllers/forgot_password_controller.dart';
import 'package:musaab_adam/screens/auth_screens/new_password_screen/controllers/new_password_controller.dart';
import 'package:musaab_adam/screens/auth_screens/profile_setup_screen/controllers/profile_setup_controller.dart';
import 'package:musaab_adam/screens/auth_screens/signup_screen/controllers/signup_controller.dart';
import 'package:musaab_adam/screens/bottom_nav_screens/home_screen/controller/home_screen_controller.dart';
import 'package:musaab_adam/screens/email_verification_screens/account_verified_screen/controller/account_verified_controller.dart';
import 'package:musaab_adam/screens/email_verification_screens/link_expired_screen/controller/link_expired_controller.dart';
import 'package:musaab_adam/screens/email_verification_screens/verify_email_screen/controller/verify_email_controller.dart';
import 'package:musaab_adam/screens/main_screen/controller/main_screen_controller.dart';

import '../../screens/auth_screens/signin_screen/controllers/signin_controller.dart';

class InitialBinding extends Bindings{
  @override
  void dependencies() {

    Get.lazyPut((){
      return MainScreenController();
    }, fenix: true);

    Get.lazyPut((){
      return HomeScreenController();
    }, fenix: true);

    Get.lazyPut((){
      return SignInController();
    }, fenix: true);

    Get.lazyPut((){
      return SignUpController();
    }, fenix: true);

    Get.lazyPut((){
      return ProfileSetupController();
    }, fenix: true);

    Get.lazyPut((){
      return ForgotPasswordController();
    }, fenix: true);

    Get.lazyPut((){
      return CheckEmailController();
    }, fenix: true);

    Get.lazyPut((){
      return NewPasswordController();
    }, fenix: true);

    Get.lazyPut((){
      return VerifyEmailController();
    }, fenix: true);

    Get.lazyPut((){
      return LinkExpiredController();
    }, fenix: true);

    Get.lazyPut((){
      return AccountVerifiedController();
    }, fenix: true);

    Get.lazyPut((){
      return MainScreenController();
    }, fenix: true);

  }

}