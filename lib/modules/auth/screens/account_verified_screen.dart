import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/routes/app_pages.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/custom_button.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';

class AccountVerifiedScreen extends StatelessWidget {

  final String userEmail = "dummymail@mail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBoxWidget(height: 60,),
                CustomText(text: AppStrings.accountVerified.tr,
                  fontWeight: FontWeight.w700,
                  figmaLetterSpacing: -2,
                  fontColor: AppColors.black50Percent,
                ),
                SizedBoxWidget(height: 12,),
                SizedBoxWidget(height: 8,),
                CustomText(text: AppStrings.congratulationsYourEmailAccount.tr,
                  figmaLetterSpacing: -2,
                  fontColor: AppColors.greyA8,
                  fontSize: 16,
                ),
                CustomText(
                  text: userEmail,
                  figmaLetterSpacing: -2,
                  fontColor: AppColors.greyA8,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                CustomText(text: AppStrings.hasBeenVerified.tr,
                  figmaLetterSpacing: -2,
                  fontColor: AppColors.greyA8,
                  fontSize: 16,
                ),
                SizedBoxWidget(height: 20,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: CustomButton(label: AppStrings.continueToYourAccount.tr,
                  backgroundColor: AppColors.primaryColor,
                    buttonWidth: double.infinity,
                    buttonHeight: 40,
                    onPressed: (){
                    Get.toNamed(AppRoutes.profileSetupScreen);
                    },
                  ),
                ),
              ],
            ),
          )
    )
    );
  }
}
