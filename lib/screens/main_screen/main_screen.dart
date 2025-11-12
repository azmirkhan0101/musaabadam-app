import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/screens/main_screen/controller/main_screen_controller.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';

class MainScreen extends StatelessWidget {
  final MainScreenController controller = Get.find<MainScreenController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx((){
        return controller.navigationScreens[controller.selectedBottomNavIndex.value];
      }),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          elevation: 0,
          showUnselectedLabels: true,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.selectedBottomNavIndex.value,
          unselectedItemColor: AppColors.grey8C,
          selectedItemColor: AppColors.brandColor,
          onTap: (index) {
            controller.selectedBottomNavIndex.value = index;
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Categories",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline_rounded), label: "Sell"),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_rounded),
              label: "Activity",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          ],
        );
      }),
    );
  }
}
