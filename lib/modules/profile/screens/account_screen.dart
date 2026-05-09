import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/widgets/cached_image_widget.dart';
import 'package:musaab_adam/modules/profile/components/payment_shipping_dialog.dart';
import 'package:musaab_adam/routes/app_pages.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/custom_button.dart';
import 'package:musaab_adam/widgets/labeled_iconbutton/labeled_iconbutton.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';
import 'package:musaab_adam/widgets/tile_button/tile_button.dart';

import '../../../core/assets_gen/assets.gen.dart';
import '../../../core/utils/app_constants.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
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
                      child: CachedImageWidget(
                        imageUrl: Dummy.user1,
                      height: 45.h,
                        width: 45.w,
                      ),
                    ),
                    SizedBoxWidget(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Michel",
                        fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                        CustomButton(
                          label: AppStrings.viewProfile,
                          fontSize: 12,
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          buttonHeight: 30,
                          onPressed: (){
                            Get.toNamed(AppRoutes.profileScreen);
                          },
                        ),
                      ],
                    )
                  ],
                ),
                SizedBoxWidget(height: 10,),
                //======================ACCOUNT SETTINGS======================//
                CustomText(text: AppStrings.account.tr,
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
                          Get.toNamed(AppRoutes.inviteScreen);
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
                          Get.toNamed(AppRoutes.myRewardsScreen);
                        },
                      ),
                    )
                  ],
                ),
                SizedBoxWidget(height: 20,),
                TileButton(title: AppStrings.accountHealth.tr,
                defaultIcon: Icons.verified_user_outlined,
                  onClick: (){
                  Get.toNamed(AppRoutes.accountHealthScreen);
                  },
                ),
                SizedBoxWidget(height: 10,),
                TileButton(title: AppStrings.paymentsShipping.tr,
                  defaultIcon: Icons.payment,
                  onClick: (){
                  showPaymentDialog();
                  },
                ),
                SizedBoxWidget(height: 10,),
                TileButton(title: AppStrings.addresses.tr,
                  defaultIcon: Icons.location_pin,
                  onClick: (){
                  Get.toNamed(AppRoutes.addressesScreen);
                  },
                ),
                SizedBoxWidget(height: 10,),
                TileButton(title: AppStrings.notificationSettings.tr,
                  defaultIcon: Icons.notifications_none_rounded,
                  onClick: (){
                  Get.toNamed(AppRoutes.notificationSettingsScreen);
                  },
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
                TileButton(
                  title: AppStrings.preferences.tr,
                  isIconDefault: false,
                  svgIconPath: Assets.icons.preferences,
                  onClick: (){
                    Get.toNamed(AppRoutes.preferencesScreen);
                  },
                ),
                SizedBoxWidget(height: 30,),
                //======================HELP AND LEGAL======================//
                CustomText(text: AppStrings.helpLegal.tr,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
                SizedBoxWidget(height: 15,),
                TileButton(title: AppStrings.contactUs.tr,
                  defaultIcon: Icons.perm_contact_calendar_sharp,
                  onClick: (){
                  Get.toNamed(AppRoutes.contactUsScreen);
                  },
                ),
                SizedBoxWidget(height: 10,),
                TileButton(title: AppStrings.userReports.tr,
                  defaultIcon: Icons.info_outline_rounded,
                  onClick: (){
                  Get.toNamed(AppRoutes.userReports);
                  },
                ),
                SizedBoxWidget(height: 10,),
                TileButton(title: AppStrings.salesTaxExemption.tr,
                  defaultIcon: Icons.percent,
                  onClick: (){
                  Get.toNamed(AppRoutes.salesTaxExemptionScreen);
                  },
                ),
                SizedBoxWidget(height: 10,),
                TileButton(title: AppStrings.privacyPolicy.tr,
                  defaultIcon: Icons.privacy_tip_outlined,
                  onClick: (){
                  Get.toNamed(AppRoutes.privacyPolicy, arguments: AppStrings.privacyPolicy);
                  },
                ),
                SizedBoxWidget(height: 10,),
                TileButton(title: AppStrings.termsConditions.tr,
                  defaultIcon: Icons.bookmark_add_outlined,
                  onClick: (){
                    Get.toNamed(AppRoutes.privacyPolicy, arguments: AppStrings.termsConditions);
                  },
                ),
                SizedBoxWidget(height: 10,),
                TileButton(title: AppStrings.faqs.tr,
                  defaultIcon: Icons.question_mark,
                  onClick: (){
                    Get.toNamed(AppRoutes.privacyPolicy, arguments: AppStrings.faqs);
                  },
                ),
                SizedBoxWidget(height: 20,),
                CustomButton(
                    label: AppStrings.signOut.tr,
                  buttonHeight: 40,
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

  void showPaymentDialog() {
    Get.dialog(
      const PaymentShippingDialog(),
      barrierDismissible: true,
      transitionCurve: Curves.easeOutBack,
      transitionDuration: const Duration(milliseconds: 300),
    );
  }
}
