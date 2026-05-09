import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  PrivacyPolicyScreen({super.key});

  String appTitle = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        leading: BackButton(color: AppColors.textColor,),
        title: CustomText(text: appTitle, fontWeight: FontWeight.w700, fontColor: AppColors.textColor,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: CustomText(
            text: "Privacy policy, terms conditions and FAQ",
          translate: false,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
