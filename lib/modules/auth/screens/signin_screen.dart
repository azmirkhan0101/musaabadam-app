import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/utils/app_validator.dart';
import 'package:musaab_adam/core/widgets/custom_button.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/core/widgets/custom_text_field.dart';

import '../../../core/assets_gen/assets.gen.dart';
import '../../../core/assets_gen/fonts.gen.dart';
import '../../../core/utils/app_colors.dart';
import '../../../routes/app_pages.dart';

class SignInScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  SignInScreen({super.key});

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  SizedBoxWidget(height: 38),
                  Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(
                      Assets.icons.grLogin,
                      width: 281.w,
                      height: 269.h,
                    ),
                  ),
                  SizedBox(height: 15),
                  CustomTextField(
                      label: AppStrings.email,
                      hintText: AppStrings.enterEmail, // CustomTextField should handle translation
                      controller: emailController,
                      validator: (value) {
                        if (value == null || !isEmailValid(email: emailController.text.trim())) {
                          return "Enter a valid email";
                        }
                        return null;
                      }
                  ),
                  SizedBoxWidget(height: 16),
                  CustomTextField(
                      label: AppStrings.password,
                      hintText: AppStrings.enterPassword,
                      controller: passwordController,
                      isPassword: true,
                      validator: (value) {
                        if (value == null || !isPasswordValid(password: passwordController.text.trim())) {
                          return "Enter a valid password";
                        }
                        return null;
                      }
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                      child: GestureDetector(
                        onTap: () => Get.toNamed(AppRoutes.forgotPasswordScreen),
                        child: CustomText(
                          text: AppStrings.forgotPassword,
                          fontFamily: FontFamily.mulish,
                          fontColor: AppColors.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBoxWidget(height: 20.h),
                  CustomButton(
                    label: AppStrings.signIn,
                    fontWeight: FontWeight.w700,
                    buttonHeight: 40.h,
                    onPressed: () {
                      Get.offAndToNamed(AppRoutes.mainScreen);
                    },
                  ),
                  SizedBoxWidget(height: 10.h),
                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        children:[
                          TextSpan(
                            text: AppStrings.dontHaveAnAccount.tr,
                            style: TextStyle(
                              color: AppColors.black80Percent,
                              fontSize: 14.sp,
                            ),
                          ),
                          TextSpan(
                            text: AppStrings.signUp.tr,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Get.offAndToNamed(AppRoutes.signUpScreen),
                            style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold
                            ),
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