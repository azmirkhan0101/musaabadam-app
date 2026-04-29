import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/modules/main_nav/controllers/main_nav_controller.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';

class MainNavScreen extends StatelessWidget {

  final MainNavController controller = Get.find<MainNavController>();

 MainNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx((){
        return controller.screens[controller.currentIndex.value];
      }),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          elevation: 0,
          showUnselectedLabels: true,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.currentIndex.value,
          unselectedItemColor: AppColors.grey8C,
          selectedItemColor: AppColors.primaryColor,
          onTap: (index) {
            controller.currentIndex.value = index;
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
