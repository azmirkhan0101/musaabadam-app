import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/custom_button.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';
import 'package:musaab_adam/routes/app_pages.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';

import '../../../core/assets_gen/assets.gen.dart';
import '../../../core/utils/app_colors.dart';

class CheckEmailScreen extends StatelessWidget {

  final String userEmail = "dummymail@mail.com";

  CheckEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 31.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBoxWidget(height: 25),
              //===================GRAPHICS=========================//
              SvgPicture.asset(
                Assets.icons.grCheckEmail,
                width: 240,
                height: 238,
              ),
              SizedBox(height: 15),
              CustomText(
                text: AppStrings.checkYourEmail.tr,
                fontColor: AppColors.black50Percent,
                figmaLetterSpacing: -2,
                fontWeight: FontWeight.w700,
              ),
              SizedBoxWidget(height: 8),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: AppStrings.weSentVarificationLinkTo.tr,
                      style: TextStyle(
                        color: AppColors.greyA8,
                        fontSize: 16.sp,
                      ),
                    ),
                    TextSpan(
                      text: "  $userEmail",
                      style: TextStyle(
                        color: AppColors.greyA8,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBoxWidget(height: 20),
              //===================CONTINUE BUTTON=========================//
              CustomButton(
                label: AppStrings.openEmailApp.tr,
                fontWeight: FontWeight.w700,
                buttonHeight: 40.h,
                onPressed: (){
                  //TODO: OPEN DEVICE EMAIL APP
                  Get.offAndToNamed(AppRoutes.newPasswordScreen);
                },
              ),
              SizedBoxWidget(height: 15,),
              //===================RESEND=========================//
              RichText(text: TextSpan(
                  children: [
                    TextSpan(text: AppStrings.didntReceiveTheEmail.tr,
                        style: TextStyle(color: AppColors.greyA8,
                            fontSize: 14.sp,
                        )
                    ),
                    TextSpan(text: "  ${AppStrings.clickToResend.tr}",
                        recognizer: TapGestureRecognizer()
                          ..onTap = (){
                            print("Resend");
                          },
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 14.sp,
                          fontWeight: FontWeight.w600
                        )
                    ),
                  ]
              ),
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
    );
  }
}
