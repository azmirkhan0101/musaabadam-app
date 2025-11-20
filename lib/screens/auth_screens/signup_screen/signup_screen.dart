import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/routes/app_pages/app_pages.dart';
import 'package:musaab_adam/utils/app_strings/app_strings.dart';
import 'package:musaab_adam/utils/global_helper/global_helper.dart';
import 'package:musaab_adam/widgets/button_widget/button_widget.dart';
import 'package:musaab_adam/widgets/image_widget/image_widget.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/widgets/text_field_widget/text_field_widget.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';

import '../../../utils/app_colors/app_colors.dart';
import '../../../utils/assets_gen/assets.gen.dart';
import 'controllers/signup_controller.dart';

class SignUpScreen extends StatelessWidget {

  /*dart run build_runner build*/

  final SignUpController controller = Get.find<SignUpController>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 31.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBoxWidget(height: 38,),
                  //===================GRAPHICS=========================//
                  Align(
                    alignment: Alignment.topCenter,
                    child: ImageWidget(width: 240, height: 235, imagePath: Assets.images.signupOnboarding.keyName
                  )
                  ),
                  SizedBoxWidget(height: 15),
                  //===================EMAIL=========================//
                  TextWidget(
                    text: AppStrings.email.tr,
                    fontSize: 18,
                    fontColor: AppColors.black50Percent,
                    figmaLetterSpacing: -2,
                  ),
                  SizedBoxWidget(height: 8),
                  TextFieldWidget(
                      hint: AppStrings.enterEmail.tr,
                    controller: controller.emailController,
                    borderRadius: 100,
                  ),
                  SizedBoxWidget(height: 16,),
                  //===================PASSWORD=========================//
                  TextWidget(
                    text: AppStrings.password.tr,
                    fontSize: 18,
                    fontColor: AppColors.black50Percent,
                    figmaLetterSpacing: -2,
                  ),
                  SizedBoxWidget(height: 8),
                  TextFieldWidget(
                      hint: AppStrings.enterPassword.tr,
                    controller: controller.passwordController,
                    obscureText: true,
                    obscureIcon: Assets.icons.eyeFilled,
                    borderRadius: 100,
                  ),
                  SizedBoxWidget(height: 16,),
                  //===================CONFIRM PASSWORD=========================//
                  TextWidget(
                    text: AppStrings.confirmPassword.tr,
                    fontSize: 18,
                    fontColor: AppColors.black50Percent,
                    figmaLetterSpacing: -2,
                  ),
                  SizedBoxWidget(height: 8),
                  TextFieldWidget(
                      hint: AppStrings.enterPassword.tr,
                    controller: controller.confirmPasswordController,
                    obscureText: true,
                    obscureIcon: Assets.icons.eyeFilled,
                    borderRadius: 100,
                  ),
                  SizedBoxWidget(height: 20.h,),
                  //===================BUTTON=========================//
                  ButtonWidget(label: AppStrings.signUp.tr,
                  fontWeight: FontWeight.w700,
                  backgroundColor: AppColors.orange,
                  buttonWidth: double.infinity,
                    buttonHeight: 40.h,
                    onPressed: (){
                    Get.toNamed(AppRoutes.VERIFY_EMAIL_SCREEN);
                    },
                  ),
                  SizedBoxWidget(
                    height: 15.h,
                  ),
                  Align(
                    alignment: AlignmentGeometry.center,
                    child: RichText(text: TextSpan(
                      children: [
                        TextSpan(text: AppStrings.alreadyHaveAnAccount.tr,
                            style: TextStyle(color: AppColors.black80Percent,
                                fontSize: 14.sp, letterSpacing: letterSpacingFromFigma(-2, 14)
                            )
                        ),
                        TextSpan(text: AppStrings.signIn.tr,
                            recognizer: TapGestureRecognizer()
                            ..onTap = (){
                          Get.toNamed(AppRoutes.SIGNIN_SCREEN);
                            },
                            style: TextStyle(
                                color: AppColors.orange80Percent,
                                fontSize: 14.sp,
                                letterSpacing: letterSpacingFromFigma(-2, 14)
                            )
                        ),
                      ]
                    ),
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
