import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';
import 'package:musaab_adam/widgets/tile_button/tile_button.dart';

class NotificationSettingsScreen extends StatelessWidget {
  const NotificationSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: CustomText(text: AppStrings.notificationSettings.tr),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_new_rounded),
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10.h,
        children: [
          CustomText(text: AppStrings.buyerNotifications.tr,
          fontWeight: FontWeight.w600,
          ),
          TileButton(title: AppStrings.auctions.tr,
          defaultIcon: Icons.touch_app_outlined,
          ),
          TileButton(title: AppStrings.followedUsers.tr,
            defaultIcon: Icons.person_pin_outlined,
          ),
          TileButton(title: AppStrings.offers.tr,
            defaultIcon: Icons.percent_outlined,
          ),
          TileButton(title: AppStrings.purchases.tr,
            defaultIcon: Icons.local_offer_outlined,
          ),
          TileButton(title: AppStrings.recommendations.tr,
            defaultIcon: Icons.star_border_purple500_rounded,
          ),
          TileButton(title: AppStrings.referrals.tr,
            defaultIcon: Icons.people_alt_outlined,
          ),
          TileButton(title: AppStrings.rewardsClub.tr,
            defaultIcon: Icons.extension_outlined,
          ),
          TileButton(title: AppStrings.savedContent.tr,
            defaultIcon: Icons.contacts_outlined,
          ),
          TileButton(title: AppStrings.socialActivity.tr,
            defaultIcon: Icons.share_outlined,
          ),
          SizedBoxWidget( height: 0,),
          CustomText(text: AppStrings.buyerNotifications.tr,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
      ),
    );
  }
}
