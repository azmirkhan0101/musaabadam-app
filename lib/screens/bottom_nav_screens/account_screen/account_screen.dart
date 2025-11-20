import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/routes/app_pages/app_pages.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';
import 'package:musaab_adam/utils/app_strings/app_strings.dart';
import 'package:musaab_adam/widgets/button_widget/button_widget.dart';
import 'package:musaab_adam/widgets/labeled_iconbutton/labeled_iconbutton.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';
import 'package:musaab_adam/widgets/tile_button/tile_button.dart';

import '../../../utils/assets_gen/assets.gen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBoxWidget(height: 12,),
                //======================PHOTO SECTION======================//
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(Assets.images.userPhoto2.keyName,
                      height: 55.h,
                        width: 55.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBoxWidget(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(text: "Michel",
                        fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                        ButtonWidget(label: AppStrings.viewProfile.tr,
                          fontSize: 12,
                          buttonHeight: 25.h,
                          buttonWidth: 90.w,
                          backgroundColor: AppColors.brandColor,
                        )
                      ],
                    )
                  ],
                ),
                SizedBoxWidget(height: 10,),
                //======================ACCOUNT SETTINGS======================//
                TextWidget(text: AppStrings.account.tr,
                fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
                SizedBoxWidget(height: 8,),
                //==========================REFERRAL AND REWARDS============================//
                Row(
                  children: [
                    Expanded(
                      child: LabeledIconButton(
                          iconPath: Assets.icons.referalCash,
                          iconHeight: 33,
                          iconWidth: 33,
                          text: AppStrings.referralsCredit.tr,
                        fontColor: AppColors.white,
                        isLabelInside: true,
                        borderRadius: 8,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        padding: [ 0, 18 ],
                        onClick: (){
                          Get.toNamed(AppRoutes.INVITE_SCREEN);
                        },
                      ),
                    ),
                    SizedBoxWidget(width: 15,),
                    Expanded(
                      child: LabeledIconButton(
                        iconPath: Assets.icons.myRewards,
                        iconHeight: 33,
                        iconWidth: 33,
                        text: AppStrings.myRewards.tr,
                        fontColor: AppColors.white,
                        isLabelInside: true,
                        borderRadius: 8,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        padding: [ 0, 18 ],
                        onClick: (){
                          Get.toNamed(AppRoutes.MY_REWARDS_SCREEN);
                        },
                      ),
                    )
                  ],
                ),
                SizedBoxWidget(height: 20,),
                TileButton(title: AppStrings.accountHealth.tr,
                defaultIcon: Icons.verified_user_outlined,
                ),
                SizedBoxWidget(height: 10,),
                TileButton(title: AppStrings.paymentsShipping.tr,
                  defaultIcon: Icons.payment,
                ),
                SizedBoxWidget(height: 10,),
                TileButton(title: AppStrings.addresses.tr,
                  defaultIcon: Icons.location_pin,
                ),
                SizedBoxWidget(height: 10,),
                TileButton(title: AppStrings.notificationSettings.tr,
                  defaultIcon: Icons.notifications_none_rounded,
                ),
                SizedBoxWidget(height: 10,),
                TileButton(title: AppStrings.changeEmail.tr,
                  defaultIcon: Icons.mail_outline_rounded,
                ),
                SizedBoxWidget(height: 10,),
                TileButton(title: AppStrings.changePassword.tr,
                  defaultIcon: Icons.key,
                ),
                SizedBoxWidget(height: 10,),
                TileButton(title: AppStrings.preferences.tr,
                  isIconDefault: false,
                  svgIconPath: Assets.icons.preferences,
                ),
                SizedBoxWidget(height: 30,),
                //======================HELP AND LEGAL======================//
                TextWidget(text: AppStrings.helpLegal.tr,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
                SizedBoxWidget(height: 15,),
                TileButton(title: AppStrings.contactUs.tr,
                  defaultIcon: Icons.perm_contact_calendar_sharp,
                  onClick: (){
                  Get.toNamed(AppRoutes.CONTACT_US_SCREEN);
                  },
                ),
                SizedBoxWidget(height: 10,),
                TileButton(title: AppStrings.userReports.tr,
                  defaultIcon: Icons.info_outline_rounded,
                ),
                SizedBoxWidget(height: 10,),
                TileButton(title: AppStrings.salesTaxExemption.tr,
                  defaultIcon: Icons.percent,
                ),
                SizedBoxWidget(height: 10,),
                TileButton(title: AppStrings.privacyPolicy.tr,
                  defaultIcon: Icons.privacy_tip_outlined,
                ),
                SizedBoxWidget(height: 10,),
                TileButton(title: AppStrings.termsConditions.tr,
                  defaultIcon: Icons.bookmark_add_outlined,
                ),
                SizedBoxWidget(height: 10,),
                TileButton(title: AppStrings.faqs.tr,
                  defaultIcon: Icons.question_mark,
                ),
                SizedBoxWidget(height: 20,),
                ButtonWidget(
                    label: AppStrings.signOut.tr,
                  buttonHeight: 40,
                  backgroundColor: Color(0xFFE53935),
                  prefixIcon: Icons.output_rounded,
                  buttonWidth: double.infinity,
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
