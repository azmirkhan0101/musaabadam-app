import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/modules/profile/screens/account_screen.dart';
import 'package:musaab_adam/modules/main_nav/screens/activity_screen.dart';
import 'package:musaab_adam/modules/main_nav/screens/categories_screen.dart';
import 'package:musaab_adam/modules/main_nav/screens/sell_screen.dart';

import '../../home/screens/home_screen.dart';

class MainNavController extends GetxController{

  RxInt currentIndex = 0.obs;

  List<Widget> screens = [
    HomeScreen(),
    CategoriesScreen(),
    SellScreen(),
    ActivityScreen(),
    AccountScreen()
  ];

}