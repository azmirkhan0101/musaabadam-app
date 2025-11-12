import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/routes/app_pages/app_pages.dart';
import 'package:musaab_adam/utils/app_strings/app_strings.dart';
import 'package:musaab_adam/widgets/button_widget/button_widget.dart';
import 'package:musaab_adam/widgets/image_widget/image_widget.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';

import '../../../utils/app_colors/app_colors.dart';
import '../../../utils/assets_gen/assets.gen.dart';
import 'controllers/check_email_controller.dart';

class CheckEmailScreen extends StatelessWidget {
  /*dart run build_runner build*/

  final CheckEmailController controller = Get.find<CheckEmailController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 31.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBoxWidget(height: 5),
                //===================GRAPHICS=========================//
                ImageWidget(
                  width: 240,
                  height: 238,
                  imagePath: Assets.images.checkEmailOnboarding.keyName,
                ),
                SizedBox(height: 15),
                TextWidget(
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
                        text: AppStrings.weSentAPasswordResetLinkTo.tr,
                        style: TextStyle(
                          color: AppColors.greyA8,
                          fontSize: 16.sp,
                        ),
                      ),
                      TextSpan(
                        text: "  ${controller.userEmail}",
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
                ButtonWidget(
                  label: AppStrings.openEmailApp.tr,
                  fontWeight: FontWeight.w700,
                  backgroundColor: AppColors.orange,
                  buttonWidth: double.infinity,
                  buttonHeight: 40.h,
                  onPressed: (){
                    //TODO: OPEN DEVICE EMAIL APP->LINK CLICK->COME BACK TO OUR APP IN NEW PASSWORD SCREEN
                    Get.toNamed(AppRoutes.NEW_PASSWORD_SCREEN);
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
                            },
                          style: TextStyle(
                              color: AppColors.orange80Percent,
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
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_back_rounded,
                          color: AppColors.orange80Percent,
                        ),
                        SizedBoxWidget(width: 8),
                        TextWidget(
                          text: AppStrings.backToThePlatform.tr,
                          fontColor: AppColors.orange80Percent,
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
    );
  }
}
