import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/utils/app_strings/app_strings.dart';
import 'package:musaab_adam/utils/assets_gen/fonts.gen.dart';
import 'package:musaab_adam/utils/global_helper/global_helper.dart';
import 'package:musaab_adam/widgets/button_widget/button_widget.dart';
import 'package:musaab_adam/widgets/image_widget/image_widget.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/widgets/text_field_widget/text_field_widget.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';

import '../../../routes/app_pages/app_pages.dart';
import '../../../utils/app_colors/app_colors.dart';
import '../../../utils/assets_gen/assets.gen.dart';
import 'controllers/signin_controller.dart';

class SignInScreen extends StatelessWidget {

  /*dart run build_runner build*/

  final SignInController controller = Get.find<SignInController>();

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
                    child: ImageWidget(width: 281, height: 269, imagePath: Assets.images.signinOnboarding.keyName
                  )
                  ),
                  SizedBox(height: 15),
                  //===================EMAIL=========================//
                  TextWidget(
                    text: AppStrings.email.tr,
                    fontSize: 18,
                    fontColor: AppColors.black50Percent,
                    figmaLetterSpacing: -2,
                  ),
                  SizedBox(height: 8),
                  TextFieldWidget(
                      hint: AppStrings.enterEmail.tr,
                    controller: controller.emailController,
                    borderRadius: 10,
                  ),
                  SizedBoxWidget(height: 16,),
                  //===================PASSWORD=========================//
                  TextWidget(
                    text: AppStrings.password.tr,
                    fontSize: 18,
                    fontColor: AppColors.black50Percent,
                    figmaLetterSpacing: -2,
                  ),
                  SizedBox(height: 8),
                  TextFieldWidget(
                      hint: AppStrings.enterPassword.tr,
                      controller: controller.passwordController,
                    borderRadius: 10,
                    obscureText: true,
                    iconPath: Assets.icons.eyeFilled,
                  ),
                  //===================FORGOT PASSWORD=========================//
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                      child: GestureDetector(
                        onTap: (){
                          Get.toNamed(AppRoutes.FORGOT_PASSWORD_SCREEN);
                        },
                        child: TextWidget(text: AppStrings.forgotPassword.tr,
                          fontFamily: FontFamily.mulish,
                          fontColor: AppColors.orange80Percent,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          figmaLetterSpacing: -5,
                        ),
                      ),
                    ),
                  ),
                  SizedBoxWidget(height: 20.h,),
                  //===================BUTTON=========================//
                  ButtonWidget(label: AppStrings.signIn.tr,
                  fontWeight: FontWeight.w700,
                  backgroundColor: AppColors.orange,
                  buttonWidth: double.infinity,
                    buttonHeight: 40.h,
                  ),
                  SizedBoxWidget(
                    height: 10.h,
                  ),
                  //===================DONT HAVE ACCOUNT=========================//
                  Align(
                    alignment: AlignmentGeometry.center,
                    child: RichText(text: TextSpan(
                      children: [
                        TextSpan(text: AppStrings.dontHaveAnAccount.tr,
                            style: TextStyle(color: AppColors.black80Percent,
                                fontSize: 14.sp, letterSpacing: letterSpacingFromFigma(-2, 14))),
                        TextSpan(text: AppStrings.signUp.tr,
                            recognizer: TapGestureRecognizer()
                              ..onTap = (){
                                Get.toNamed(AppRoutes.SIGNUP_SCREEN);
                              },
                            style: TextStyle(color: AppColors.orange80Percent, fontSize: 14.sp, letterSpacing: letterSpacingFromFigma(-2, 14))),
                      ]
                    ),
                    ),
                  ),
                  SizedBoxWidget(height: 20.h,),
                  //===================DIVIDER=========================//
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Divider(
                          color: AppColors.grey86,
                          height: 2.h,
                          endIndent: 4.w,
                        ),
                      ),
                      TextWidget(
                          text: AppStrings.signInWith.tr,
                          fontColor: AppColors.orange80Percent,
                          fontFamily: FontFamily.openSans,
                          fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        figmaLetterSpacing: -5,
                      ),
                      Expanded(
                        child: Divider(
                          color: AppColors.grey86,
                          height: 2.h,
                          indent: 4.w,
                        ),
                      )
                    ],
                  ),
                  SizedBoxWidget(height: 20.h,),
                  //===================GOOGLE/FACEBOOK=========================//
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset( Assets.icons.googleLogin,
                          height: 15.h,
                          width: 15.w,
                          ),
                          Padding(
                            padding: EdgeInsets.only( left: 6.w),
                            child: TextWidget(text: AppStrings.loginWithGoogle.tr,
                              fontColor: AppColors.black90Percent,
                            fontSize: 13.sp,
                              figmaLetterSpacing: -5,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset( Assets.icons.facebookLogin,
                            height: 15.h,
                            width: 15.w,
                          ),
                          Padding(
                            padding: EdgeInsets.only( left: 6.w),
                            child: TextWidget(text: AppStrings.loginWithFacebook.tr,
                              fontColor: AppColors.black90Percent,
                              fontSize: 13.sp,
                              figmaLetterSpacing: -5,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}
