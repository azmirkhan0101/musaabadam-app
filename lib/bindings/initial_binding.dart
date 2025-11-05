import 'package:get/get.dart';
import 'package:musaab_adam/screens/auth_screens/controllers/signin_controller.dart';

class InitialBinding extends Bindings{
  @override
  void dependencies() {

    Get.lazyPut((){
      return SignInController();
    });
  }

}