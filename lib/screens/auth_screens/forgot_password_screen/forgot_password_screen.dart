import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/routes/app_pages/app_pages.dart';
import 'package:musaab_adam/utils/app_strings/app_strings.dart';
import 'package:musaab_adam/widgets/button_widget/button_widget.dart';
import 'package:musaab_adam/widgets/image_widget/image_widget.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/widgets/text_field_widget/text_field_widget.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';

import '../../../utils/app_colors/app_colors.dart';
import '../../../utils/assets_gen/assets.gen.dart';
import 'controllers/forgot_password_controller.dart';

class ForgotPasswordScreen extends StatelessWidget {

  /*dart run build_runner build*/

  final ForgotPasswordController controller = Get.find<ForgotPasswordController>();

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
                  SizedBoxWidget(height: 5,),
                  //===================GRAPHICS=========================//
                  ImageWidget(width: 240, height: 238, imagePath: Assets.images.forgotPasswordOnboarding.keyName
                  ),
                  SizedBox(height: 15),
                  TextWidget(text: AppStrings.forgotYourPassword.tr,
                    fontColor: AppColors.black50Percent,
                    figmaLetterSpacing: -2,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBoxWidget(height: 8,),
                  TextWidget(text: AppStrings.noWorries.tr,
                    fontColor: AppColors.greyA8,
                    fontSize: 15,
                  ),
                  SizedBoxWidget(
                    height: 10,
                  ),
                  //===================EMAIL=========================//
                  Align(
                    alignment: AlignmentGeometry.centerLeft,
                    child: TextWidget(
                      text: AppStrings.email.tr,
                      fontSize: 18,
                      fontColor: AppColors.black50Percent,
                      figmaLetterSpacing: -2,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFieldWidget(
                      hint: AppStrings.enterEmail.tr,
                    controller: controller.emailController,
                    borderRadius: 100,
                  ),
                  SizedBoxWidget(height: 30,),
                  //===================CONTINUE BUTTON=========================//
                  ButtonWidget(label: AppStrings.continuee.tr,
                  fontWeight: FontWeight.w700,
                  backgroundColor: AppColors.orange,
                  buttonWidth: double.infinity,
                    buttonHeight: 40,
                    onPressed: (){
                    Get.toNamed(AppRoutes.CHECK_EMAIL_SCREEN);
                    },
                  ),
                  //===================BACK TO THE PLATFORM=========================//
                  Align(
                    alignment: AlignmentGeometry.center,
                    child: TextButton(
                      onPressed: (){

                      },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.arrow_back_rounded, color: AppColors.orange80Percent,),
                            SizedBoxWidget(width: 8,),
                            TextWidget(text: AppStrings.backToThePlatform.tr,
                            fontColor: AppColors.orange80Percent,
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
          )
      ),
    );
  }
}
