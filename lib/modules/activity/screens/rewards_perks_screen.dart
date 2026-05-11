import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/modules/activity/components/challenges_tab.dart';
import 'package:musaab_adam/modules/activity/components/coupon_tab.dart';
import 'package:musaab_adam/modules/activity/components/gem_store_tab.dart';

import '../../../core/utils/app_colors.dart';
import '../../../widgets/text_button_widget/text_button_widget.dart';
import '../components/referral_tab.dart';
class RewardsPerksScreen extends StatelessWidget {
  RewardsPerksScreen({super.key});

  RxInt selectedTabIndex = 0.obs;
  final List<String> tabs = ['Referrals', 'Challenges', 'Gem Store', 'Coupons'];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: const BackButton(color: Colors.black),
        title: const Text(
          'Earn Rewards & Unlock Perks',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // ── Custom Tab Bar ──────────────────────────────────────────────
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              spacing: 15.w,
              children: [
                Obx(() {
                  return TextButtonWidget(
                    text: AppStrings.referrals.tr,
                    textColor: AppColors.black80Percent,
                    fontSize: 14,
                    decoration: selectedTabIndex.value == 0
                        ? TextDecoration.underline
                        : null,
                    fontWeight: FontWeight.w600,
                    onPressed: () {
                      selectedTabIndex.value = 0;
                    },
                  );
                }),
                Obx(() {
                  return TextButtonWidget(
                    text: "Challenges",
                    textColor: AppColors.black80Percent,
                    fontSize: 14,
                    decoration: selectedTabIndex.value == 1
                        ? TextDecoration.underline
                        : null,
                    fontWeight: FontWeight.w600,
                    onPressed: () {
                      selectedTabIndex.value = 1;
                    },
                  );
                }),
                Obx(() {
                  return TextButtonWidget(
                    text: "Gem Store",
                    textColor: AppColors.black80Percent,
                    fontSize: 14,
                    decoration: selectedTabIndex.value == 2
                        ? TextDecoration.underline
                        : null,
                    fontWeight: FontWeight.w600,
                    onPressed: () {
                      selectedTabIndex.value = 2;
                    },
                  );
                }),
                Obx(() {
                  return TextButtonWidget(
                    text: "Coupons",
                    textColor: AppColors.black80Percent,
                    fontSize: 14,
                    decoration: selectedTabIndex.value == 3
                        ? TextDecoration.underline
                        : null,
                    fontWeight: FontWeight.w600,
                    onPressed: () {
                      selectedTabIndex.value = 3;
                    },
                  );
                }),
              ],
            ),
          ),
          // ── Tab Content ─────────────────────────────────────────────────
          Expanded(
            child: Obx(
                  () {
                // ✅ FIX 4: Access .value inside Obx so content swaps
                //    reactively when the user taps a tab.
                switch (selectedTabIndex.value) {
                  case 0:
                    return const ReferralTab();
                  case 1:
                    return const ChallengesTab();
                  case 2:
                    return const GemStoreTab();
                  case 3:
                    return const CouponTab();
                  default:
                    return const SizedBox.shrink();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}