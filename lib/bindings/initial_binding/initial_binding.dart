import 'package:get/get.dart';
import 'package:musaab_adam/screens/auth_screens/profile_setup_screen/controllers/profile_setup_controller.dart';
import 'package:musaab_adam/screens/auth_screens/signup_screen/controllers/signup_controller.dart';

import '../../screens/auth_screens/signin_screen/controllers/signin_controller.dart';

class InitialBinding extends Bindings{
  @override
  void dependencies() {

    Get.lazyPut((){
      return SignInController();
    }, fenix: true);

    Get.lazyPut((){
      return SignUpController();
    }, fenix: true);

    Get.lazyPut((){
      return ProfileSetupController();
    }, fenix: true);

  }

}