import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/custom_button.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';
import 'package:musaab_adam/routes/app_pages.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/widgets/text_field_widget/custom_text_field.dart';

import '../../../core/assets_gen/assets.gen.dart';
import '../../../core/utils/app_colors.dart';

class NewPasswordScreen extends StatelessWidget {

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 31.w),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBoxWidget(height: 25,),
                    //===================GRAPHICS=========================//
                    SvgPicture.asset(
                        Assets.icons.grResetPassword,
                        width: 240, height: 227
                    ),
                    SizedBox(height: 15),
                    CustomText(text: AppStrings.setNewPassword.tr,
                      fontColor: AppColors.black50Percent,
                      figmaLetterSpacing: -2,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBoxWidget(height: 8,),
                    CustomText(text: AppStrings.yourNewPassword.tr,
                      fontColor: AppColors.greyA8,
                      fontSize: 15,
                    ),
                    SizedBoxWidget(
                      height: 10,
                    ),
                    //===================NEW PASSWORD=========================//
                    SizedBox(height: 8),
                    CustomTextField(
                        hintText: AppStrings.newPassword.tr,
                      controller: passwordController,
                    ),
                    SizedBoxWidget(height: 20,),
                    CustomTextField(
                      hintText: AppStrings.confirmPassword.tr,
                      controller: confirmPasswordController,
                    ),
                    SizedBoxWidget(height: 10,),
                    //===================CONTINUE BUTTON=========================//
                    CustomButton(
                      label: AppStrings.resetPassword.tr,
                    fontWeight: FontWeight.w700,
                      buttonHeight: 40.h,
                      onPressed: (){
                        showResetSuccessAlert();
                        //Get.offAllNamed(AppRoutes.signInScreen);
                      },
                    ),
                    //===================BACK TO THE PLATFORM=========================//
                    Align(
                      alignment: AlignmentGeometry.center,
                      child: TextButton(
                        onPressed: (){
                          Get.back();
                        },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.arrow_back_rounded, color: AppColors.primaryColor,),
                              SizedBoxWidget(width: 8,),
                              CustomText(text: AppStrings.backToThePlatform.tr,
                              fontColor: AppColors.primaryColor,
                                fontSize: 14,
                                figmaLetterSpacing: -2,
                              ),
                            ],
                          ),
                      )
                    )
                  ],
                ),
              ),
            ),
          )
      ),
    );
  }

  //RESET DONE ALERT
  Future<void> showResetSuccessAlert() async{
    Get.dialog(
        AlertDialog(
          backgroundColor: AppColors.backgroundColor,
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(Assets.icons.doneOrange),
              SizedBox(
                height: 15.h,
              ),
              Text("Password reset successfully.", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),),
              SizedBox(height: 12.h,),
              Container(
                height: 42,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextButton(
                  onPressed: () async{
                    Get.back();
                    Get.offAllNamed(AppRoutes.signInScreen);
                  },
                  child: const Text(
                    "Ok",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
