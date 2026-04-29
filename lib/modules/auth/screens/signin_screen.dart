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
import 'package:musaab_adam/widgets/text_field_widget/custom_text_field.dart';

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
      backgroundColor: AppColors.white,
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
                      Assets.icons.grLogin,
                      width: 281.w,
                      height: 269.h,
                    ),
                  ),
                  SizedBox(height: 15),
                  //===================EMAIL=========================//
                  SizedBox(height: 8),
                  CustomTextField(
                    label: AppStrings.email,
                    hintText: AppStrings.enterEmail.tr,
                    controller: emailController,
                    validator: (value) {
                      if (value == null || !isEmailValid(email: emailController.text.trim())) {
                        return "Enter a valid email";
                      }
                      return null;
                    }
                  ),
                  SizedBoxWidget(height: 16),
                  //===================PASSWORD=========================//
                  SizedBox(height: 8),
                  CustomTextField(
                    label: AppStrings.password,
                    hintText: AppStrings.enterPassword.tr,
                    controller: passwordController,
                    isPassword: true,
                    validator: (value) {
                      if (value == null || !isPasswordValid(password: passwordController.text.trim())) {
                        return "Enter a valid password";
                      }
                      return null;
                    }
                  ),
                  //===================FORGOT PASSWORD=========================//
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.forgotPasswordScreen);
                        },
                        child: CustomText(
                          text: AppStrings.forgotPassword.tr,
                          fontFamily: FontFamily.mulish,
                          fontColor: AppColors.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          figmaLetterSpacing: -5,
                        ),
                      ),
                    ),
                  ),
                  SizedBoxWidget(height: 20.h),
                  //===================BUTTON=========================//
                  CustomButton(
                    label: AppStrings.signIn.tr,
                    fontWeight: FontWeight.w700,
                    buttonHeight: 40.h,
                    onPressed: (){
                      // if (formKey.currentState!.validate()) {
                      //
                      // }
                      Get.offAndToNamed(AppRoutes.mainScreen);
                    },
                  ),
                  SizedBoxWidget(height: 10.h),
                  //===================DONT HAVE ACCOUNT=========================//
                  Align(
                    alignment: AlignmentGeometry.center,
                    child: RichText(
                      text: TextSpan(
                        children: [
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
                              ..onTap = () {
                                Get.offAndToNamed(AppRoutes.signUpScreen);
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
                  SizedBoxWidget(height: 20.h),
                  //===================DIVIDER=========================//
                  // Row(
                  //   mainAxisSize: MainAxisSize.max,
                  //   children: [
                  //     Expanded(
                  //       child: Divider(
                  //         color: AppColors.grey86,
                  //         height: 2.h,
                  //         endIndent: 4.w,
                  //       ),
                  //     ),
                  //     CustomText(
                  //       text: AppStrings.signInWith.tr,
                  //       fontColor: AppColors.primaryColor,
                  //       fontFamily: FontFamily.openSans,
                  //       fontWeight: FontWeight.w500,
                  //       fontSize: 14.sp,
                  //       figmaLetterSpacing: -5,
                  //     ),
                  //     Expanded(
                  //       child: Divider(
                  //         color: AppColors.grey86,
                  //         height: 2.h,
                  //         indent: 4.w,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // SizedBoxWidget(height: 20.h),
                  // //===================GOOGLE/FACEBOOK=========================//
                  // Row(
                  //   mainAxisSize: MainAxisSize.max,
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     GestureDetector(
                  //       onTap: (){
                  //         print("Google");
                  //       },
                  //       child: Row(
                  //         children: [
                  //           SvgPicture.asset(
                  //             Assets.icons.googleLogin,
                  //             height: 15.h,
                  //             width: 15.w,
                  //           ),
                  //           Padding(
                  //             padding: EdgeInsets.only(left: 6.w),
                  //             child: CustomText(
                  //               text: AppStrings.loginWithGoogle,
                  //               fontColor: AppColors.black90Percent,
                  //               fontSize: 13.sp,
                  //               figmaLetterSpacing: -5,
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //     GestureDetector(
                  //       onTap: (){
                  //         print("Apple");
                  //       },
                  //       child: Row(
                  //         children: [
                  //           Icon(Icons.apple_rounded),
                  //           Padding(
                  //             padding: EdgeInsets.only(left: 6.w),
                  //             child: CustomText(
                  //               text: "Login with apple",
                  //               fontColor: AppColors.black90Percent,
                  //               fontSize: 13.sp,
                  //               figmaLetterSpacing: -5,
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
