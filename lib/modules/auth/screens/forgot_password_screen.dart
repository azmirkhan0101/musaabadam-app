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
import '../../../core/utils/app_validator.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 31.w),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBoxWidget(height: 25),
                  //===================GRAPHICS=========================//
                  SvgPicture.asset(
                    Assets.icons.grForgotPass,
                    width: 240,
                    height: 238,
                  ),
                  SizedBox(height: 15),
                  CustomText(
                    text: AppStrings.forgotYourPassword.tr,
                    fontColor: AppColors.black50Percent,
                    figmaLetterSpacing: -2,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBoxWidget(height: 8),
                  CustomText(
                    text: AppStrings.noWorries.tr,
                    fontColor: AppColors.greyA8,
                    fontSize: 15,
                  ),
                  SizedBoxWidget(height: 10),
                  //===================EMAIL=========================//
                  CustomTextField(
                    label: AppStrings.email,
                    hintText: AppStrings.enterEmail.tr,
                    controller: emailController,
                    validator: (value) {
                      if (value == null ||
                          !isEmailValid(email: emailController.text.trim())) {
                        return "Enter a valid email";
                      }
                      return null;
                    },
                  ),
                  SizedBoxWidget(height: 30),
                  //===================CONTINUE BUTTON=========================//
                  CustomButton(
                    label: AppStrings.continuee.tr,
                    fontWeight: FontWeight.w700,
                    buttonHeight: 40,
                    onPressed: () {
                      // if (formKey.currentState!.validate()) {
                      //   print("Valid");
                      // }
                      Get.toNamed(AppRoutes.checkEmailScreen);
                    },
                  ),
                  //===================BACK TO THE PLATFORM=========================//
                  Align(
                    alignment: AlignmentGeometry.center,
                    child: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_back_rounded,
                            color: AppColors.primaryColor,
                          ),
                          SizedBoxWidget(width: 8),
                          CustomText(
                            text: AppStrings.backToThePlatform.tr,
                            fontColor: AppColors.primaryColor,
                            fontSize: 14,
                            figmaLetterSpacing: -2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
