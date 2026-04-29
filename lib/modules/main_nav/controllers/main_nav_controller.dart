import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/screens/bottom_nav_screens/account_screen/account_screen.dart';
import 'package:musaab_adam/screens/bottom_nav_screens/activity_screen/activity_screen.dart';
import 'package:musaab_adam/screens/bottom_nav_screens/categories_screen/categories_screen.dart';
import 'package:musaab_adam/screens/bottom_nav_screens/sell_screen/sell_screen.dart';

import '../../home/screens/home_screen.dart';

class MainNavController extends GetxController{

  RxInt currentIndex = 0.obs;

  List<Widget> screens = [
    HomeScreen(),
    //CategoriesScreen(),
    //SellScreen(),
    //ActivityScreen(),
   // AccountScreen()
  ];

}