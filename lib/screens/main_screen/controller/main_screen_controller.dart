import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/screens/bottom_nav_screens/account_screen/account_screen.dart';
import 'package:musaab_adam/screens/bottom_nav_screens/activity_screen/activity_screen.dart';
import 'package:musaab_adam/screens/bottom_nav_screens/categories_screen/categories_screen.dart';
import 'package:musaab_adam/screens/bottom_nav_screens/sell_screen/sell_screen.dart';

import '../../home_screens/home_screen/home_screen.dart';

class MainScreenController extends GetxController{

  RxInt selectedBottomNavIndex = 0.obs;

  List<Widget> navigationScreens = [
    HomeScreen(),
    CategoriesScreen(),
    SellScreen(),
    ActivityScreen(),
    AccountScreen()
  ];

}