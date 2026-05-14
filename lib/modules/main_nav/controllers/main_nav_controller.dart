import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/modules/profile/screens/account_screen.dart';
import 'package:musaab_adam/modules/main_nav/screens/activity_screen.dart';
import 'package:musaab_adam/modules/main_nav/screens/categories_screen.dart';
import 'package:musaab_adam/modules/seller/screens/seller_hub_screen.dart';
import 'package:musaab_adam/modules/seller_verification/screens/become_a_seller_screen.dart';

import '../../home/screens/home_screen.dart';

class MainNavController extends GetxController{

  RxInt currentIndex = 0.obs;

  List<Widget> screens = [
    HomeScreen(),
    CategoriesScreen(),
    SellerHubScreen(),
    //BecomeASellerScreen(),
    ActivityScreen(),
    AccountScreen()
  ];

}