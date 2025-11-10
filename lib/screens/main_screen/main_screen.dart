import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/screens/bottom_nav_screens/home_screen/home_screen.dart';
import 'package:musaab_adam/screens/main_screen/controller/main_screen_controller.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';

class MainScreen extends StatelessWidget {
  final MainScreenController controller = Get.find<MainScreenController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: controller.selectedBottomNavIndex.value,
          unselectedItemColor: AppColors.grey8C,
          selectedItemColor: AppColors.orange,
          onTap: (index) {
            controller.selectedBottomNavIndex.value = index;
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "Categories",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.sell), label: "Sell"),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_activity),
              label: "Activity",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          ],
        );
      }),
    );
  }
}
