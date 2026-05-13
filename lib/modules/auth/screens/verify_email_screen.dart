import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/routes/app_pages.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/custom_button.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';

class VerifyEmailScreen extends StatelessWidget {

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
                CustomText(text: AppStrings.verifyYourEmail,
                  fontWeight: FontWeight.w700,
                  fontColor: AppColors.black50Percent,
                ),
                SizedBoxWidget(height: 12,),
                SizedBoxWidget(height: 8,),
                CustomText(
                  text: AppStrings.weSentVarificationLinkTo,
                  fontColor: AppColors.greyA8,
                  fontSize: 16,
                ),
                CustomText(
                  text: userEmail,
                  fontWeight: FontWeight.w600,
                  fontColor: AppColors.greyA8,
                  fontSize: 16,
                ),
                SizedBoxWidget(height: 20,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: CustomButton(
                    label: AppStrings.sendEmail.tr,
                    buttonWidth: double.infinity,
                    buttonHeight: 40,
                    onPressed: (){
                      Get.toNamed(AppRoutes.linkExpiredScreen);
                    },
                  ),
                ),
                SizedBoxWidget(height: 10,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: CustomButton(
                    label: AppStrings.changeEmail.tr,
                    backgroundColor: Colors.transparent,
                    buttonWidth: double.infinity,
                    buttonHeight: 40,
                    borderColor: AppColors.primaryColor,
                    textColor: AppColors.primaryColor,
                    onPressed: (){
                    //TODO: GET EMAIL ON NEW EMAIL ADDRESS->THEN VERIFY
                      Get.toNamed(AppRoutes.linkExpiredScreen);
                    },
                  ),
                )
              ],
            ),
          )
    )
    );
  }
}
