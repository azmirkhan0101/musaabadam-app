import 'package:get/get.dart';

import '../../screens/auth_screens/signin_screen/controllers/signin_controller.dart';

class InitialBinding extends Bindings{
  @override
  void dependencies() {

    Get.lazyPut((){
      return SignInController();
    });
  }

}