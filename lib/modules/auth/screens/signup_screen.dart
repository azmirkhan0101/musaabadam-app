import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/utils/app_validator.dart';
import 'package:musaab_adam/core/widgets/custom_button.dart';
import 'package:musaab_adam/routes/app_pages.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/widgets/text_field_widget/custom_text_field.dart';

import '../../../core/assets_gen/assets.gen.dart';
import '../../../core/utils/app_colors.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  SignUpScreen({super.key});

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
                children: [
                  SizedBoxWidget(height: 38),
                  //===================GRAPHICS=========================//
                  Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(
                      Assets.icons.grSignup,
                      width: 240,
                      height: 235,
                    ),
                  ),
                  SizedBoxWidget(height: 15),
                  //===================EMAIL=========================//
                  SizedBoxWidget(height: 8),
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
                  SizedBoxWidget(height: 16),
                  //===================PASSWORD=========================//
                  CustomTextField(
                    label: AppStrings.password,
                    hintText: AppStrings.enterPassword.tr,
                    controller: passwordController,
                    isPassword: true,
                    validator: (value) {
                      if (value == null ||
                          !isPasswordValid(
                            password: passwordController.text.trim(),
                          )) {
                        return "Enter a valid password";
                      }
                      return null;
                    },
                  ),
                  SizedBoxWidget(height: 16),
                  //===================CONFIRM PASSWORD=========================//
                  CustomTextField(
                    label: AppStrings.confirmPassword,
                    hintText: AppStrings.enterPassword.tr,
                    controller: confirmPasswordController,
                    isPassword: true,
                    validator: (value) {
                      if (value == null ||
                          passwordController.text !=
                              confirmPasswordController.text) {
                        return "Passwords do not match";
                      }
                      return null;
                    },
                  ),
                  SizedBoxWidget(height: 20.h),
                  //===================BUTTON=========================//
                  CustomButton(
                    label: AppStrings.signUp.tr,
                    fontWeight: FontWeight.w700,
                    buttonHeight: 40.h,
                    onPressed: () {
                      // if (formKey.currentState!.validate()) {
                      //   print("Valid");
                      // }
                      Get.offAndToNamed(AppRoutes.verifyEmailScreen);
                    },
                  ),
                  SizedBoxWidget(height: 15.h),
                  Align(
                    alignment: AlignmentGeometry.center,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: AppStrings.alreadyHaveAnAccount.tr,
                            style: TextStyle(
                              color: AppColors.black80Percent,
                              fontSize: 14.sp,
                            ),
                          ),
                          TextSpan(
                            text: AppStrings.signIn.tr,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.offAndToNamed(AppRoutes.signInScreen);
                              },
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 14.sp,
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
