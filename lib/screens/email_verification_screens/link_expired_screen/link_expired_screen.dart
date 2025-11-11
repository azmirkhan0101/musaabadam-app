import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/screens/email_verification_screens/link_expired_screen/controller/link_expired_controller.dart';
import 'package:musaab_adam/screens/email_verification_screens/verify_email_screen/controller/verify_email_controller.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';
import 'package:musaab_adam/utils/app_strings/app_strings.dart';
import 'package:musaab_adam/widgets/button_widget/button_widget.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';

class LinkExpiredScreen extends StatelessWidget {

  final LinkExpiredController controller = Get.find<LinkExpiredController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBoxWidget(height: 60,),
                TextWidget(text: AppStrings.emailVerificationLinkExpired.tr,
                  fontWeight: FontWeight.w700,
                  figmaLetterSpacing: -2,
                  fontColor: AppColors.black50Percent,
                ),
                SizedBoxWidget(height: 12,),
                SizedBoxWidget(height: 8,),
                TextWidget(text: AppStrings.noWorriesWellSendTheLinkAgain.tr,
                  figmaLetterSpacing: -2,
                  fontColor: AppColors.greyA8,
                  fontSize: 16,
                ),
                SizedBoxWidget(height: 20,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: ButtonWidget(label: AppStrings.resendVerificationLink.tr,
                  backgroundColor: AppColors.brandColor,
                    buttonWidth: double.infinity,
                    buttonHeight: 40,
                  ),
                ),
              ],
            ),
          )
    )
    );
  }
}
