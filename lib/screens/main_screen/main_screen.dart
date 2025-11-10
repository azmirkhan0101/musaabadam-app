import 'package:flutter/material.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Hello"),),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          unselectedItemColor: AppColors.grey8C,
          selectedItemColor: AppColors.orange,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.category), label: "Categories"),
        BottomNavigationBarItem(icon: Icon(Icons.sell), label: "Sell"),
        BottomNavigationBarItem(icon: Icon(Icons.local_activity), label: "Activity"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
      ]
      ),
    );
  }
}
