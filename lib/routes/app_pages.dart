import 'package:get/get.dart';
import 'package:musaab_adam/screens/auth_screens/signin_screen.dart';

part 'app_routes.dart';

class AppPages{

  static final pages = [
    GetPage(
        name: AppRoutes.SIGNIN_PAGE,
        page: (){
          return SignInScreen();
        })
  ];
}