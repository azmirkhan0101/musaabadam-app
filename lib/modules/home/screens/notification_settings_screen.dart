import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/components/switch_tile.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/custom_text.dart';
import '../../../widgets/sized_box_widget/sized_box_widget.dart';

class NotificationSettingsScreen extends StatelessWidget {
  NotificationSettingsScreen({super.key});

  // Section Expansion States
  final RxBool isBuyerExpanded = false.obs;
  final RxBool isSellerExpanded = false.obs;

  // --- BUYER States ---
  final RxBool auctionsNotify = true.obs;
  final RxBool followedNotify = true.obs;
  final RxBool offersNotify = true.obs;
  final RxBool purchasesNotify = true.obs;
  final RxBool recommendationsNotify = true.obs;
  final RxBool referralsNotify = true.obs;
  final RxBool rewardsNotify = true.obs;
  final RxBool savedContentNotify = true.obs;
  final RxBool socialNotify = true.obs;

  // --- SELLER States ---
  final RxBool sellerAuctionsNotify = true.obs;
  final RxBool ordersNotify = true.obs;
  final RxBool promoteToolsNotify = true.obs;
  final RxBool promoOffersNotify = true.obs;
  final RxBool guidanceNotify = true.obs;
  final RxBool showsNotify = true.obs;

  // --- GENERAL State ---
  final RxBool generalNotify = true.obs;

  void toggleBuyer() => isBuyerExpanded.value = !isBuyerExpanded.value;
  void toggleSeller() => isSellerExpanded.value = !isSellerExpanded.value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: CustomText(text: AppStrings.notificationSettings),
        centerTitle: true,
        leading: const BackButton(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //==================== BUYER SECTION =====================
              expandableSection(
                title: AppStrings.buyerNotifications,
                isExpanded: isBuyerExpanded,
                onExpansionChanged: (val) => toggleBuyer(),
                children: [
                  customSwitch(AppStrings.auctions, Icons.touch_app_outlined, auctionsNotify),
                  customSwitch(AppStrings.followedUsers, Icons.person_pin_outlined, followedNotify),
                  customSwitch(AppStrings.offers, Icons.percent_outlined, offersNotify),
                  customSwitch(AppStrings.purchases, Icons.local_offer_outlined, purchasesNotify),
                  customSwitch(AppStrings.recommendations, Icons.star_border_purple500_rounded, recommendationsNotify),
                  customSwitch(AppStrings.referrals, Icons.people_alt_outlined, referralsNotify),
                  customSwitch(AppStrings.rewardsClub, Icons.extension_outlined, rewardsNotify),
                  customSwitch(AppStrings.savedContent, Icons.contacts_outlined, savedContentNotify),
                  customSwitch(AppStrings.socialActivity, Icons.share_outlined, socialNotify),
                ],
              ),

              SizedBoxWidget(height: 10.h),

              //======================== SELLER SECTION ======================
              expandableSection(
                title: "Seller Notifications",
                isExpanded: isSellerExpanded,
                onExpansionChanged: (val) => toggleSeller(),
                children: [
                  customSwitch(AppStrings.auctions, Icons.touch_app_outlined, sellerAuctionsNotify),
                  customSwitch(AppStrings.orders, Icons.insert_drive_file_outlined, ordersNotify),
                  customSwitch(AppStrings.promoteTools, Icons.rocket_launch_outlined, promoteToolsNotify),
                  customSwitch(AppStrings.promotionalOffers, Icons.percent_outlined, promoOffersNotify),
                  customSwitch(AppStrings.sellerGuidance, Icons.directions_outlined, guidanceNotify),
                  customSwitch(AppStrings.shows, Icons.broadcast_on_home, showsNotify),
                ],
              ),

              SizedBoxWidget(height: 20.h),

              //==================== GENERAL SECTION =====================
              CustomText(
                text: "General Notification",
                fontWeight: FontWeight.w600,
              ),
              SizedBoxWidget(height: 10.h),
              customSwitch(AppStrings.promotional, Icons.star_outline, generalNotify),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to reduce repetitive Obx/SwitchTile code
  Widget customSwitch(String title, IconData icon, RxBool state) {
    return Obx(() => SwitchTile(
      title: title,
      defaultIcon: icon,
      value: state.value,
      onChanged: (val) => state.value = val,
    ));
  }

  Widget expandableSection({
    required String title,
    required RxBool isExpanded,
    required Function(bool) onExpansionChanged,
    required List<Widget> children
  }) {
    return Obx(() => Theme(
      data: Theme.of(Get.context!).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        title: CustomText(
          text: title,
          fontWeight: FontWeight.w600,
        ),
        tilePadding: EdgeInsets.zero,
        childrenPadding: EdgeInsets.zero,
        initiallyExpanded: isExpanded.value,
        onExpansionChanged: onExpansionChanged,
        trailing: Icon(
          isExpanded.value ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
          color: AppColors.black,
        ),
        children: [
          Column(
            children: children
                .map((child) => Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: child,
            ))
                .toList(),
          ),
        ],
      ),
    ));
  }
}