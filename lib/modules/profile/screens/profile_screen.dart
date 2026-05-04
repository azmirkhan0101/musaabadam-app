import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_constants.dart';
import 'package:musaab_adam/core/widgets/cached_image_widget.dart';
import 'package:musaab_adam/core/widgets/custom_button.dart';
import 'package:musaab_adam/core/widgets/custom_choice_chip.dart';
import 'package:musaab_adam/modules/profile/components/clips_tab.dart';
import 'package:musaab_adam/modules/profile/components/review_tab.dart';
import 'package:musaab_adam/modules/profile/components/shop_tab.dart';
import 'package:musaab_adam/modules/profile/components/shows_tab.dart';
import 'package:musaab_adam/routes/app_pages.dart';
import 'package:musaab_adam/widgets/text_button_widget/text_button_widget.dart';

import '../../../core/assets_gen/assets.gen.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/custom_text.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  RxInt mainTabCurrentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: const BackButton(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.screen_share_outlined,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            spacing: 20.h,
            children: [
              // Center(
              //   child: Stack(
              //     children: [
              //       ClipRRect(
              //         borderRadius: BorderRadius.circular(50),
              //         child: CachedImageWidget(
              //             imageUrl: Dummy.user1,
              //           height: 60.h,
              //           width: 60.w,
              //         ),
              //       ),
              //       Positioned(
              //         bottom: 0.h,
              //         right: 0.w,
              //         child: SvgPicture.asset(Assets.icons.camera),
              //       ),
              //     ],
              //   ),
              // ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: CachedImageWidget(
                  imageUrl: Dummy.user1,
                  height: 60.h,
                  width: 60.w,
                ),
              ),
              CustomText(
                text: "Henry Jackob",
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.orangeAccent),
                            CustomText(text: "4.9", fontColor: AppColors.white),
                          ],
                        ),
                        CustomText(
                          text: "Ratings",
                          fontSize: 14,
                          fontColor: AppColors.white,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60,
                      child: VerticalDivider(
                        color: AppColors.black50Percent,
                        thickness: 2,
                      ),
                    ),
                    Column(
                      children: [
                        CustomText(text: "1.5k", fontColor: AppColors.white),
                        CustomText(
                          text: "Follower",
                          fontSize: 14,
                          fontColor: AppColors.white,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60,
                      child: VerticalDivider(
                        color: AppColors.black50Percent,
                        thickness: 2,
                      ),
                    ),
                    Column(
                      children: [
                        CustomText(text: "7.5k", fontColor: AppColors.white),
                        CustomText(
                          text: "Following",
                          fontSize: 14,
                          fontColor: AppColors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                spacing: 20.w,
                children: [
                  Expanded(
                    child: CustomButton(
                      label: AppStrings.message.tr,
                      backgroundColor: AppColors.orange,
                      buttonHeight: 40,
                      fontSize: 14,
                      onPressed: () {
                        Get.toNamed(AppRoutes.inboxScreen);
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomButton(
                      label: AppStrings.editProfile.tr,
                      backgroundColor: AppColors.primaryColor,
                      buttonHeight: 40,
                      fontSize: 14,
                      onPressed: () {
                        Get.toNamed(AppRoutes.updateProfileScreen);
                      },
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 15.w,
                children: [
                  Obx(() {
                    return TextButtonWidget(
                      text: AppStrings.shop.tr,
                      textColor: AppColors.black80Percent,
                      fontSize: 14,
                      decoration: mainTabCurrentIndex.value == 0
                          ? TextDecoration.underline
                          : null,
                      fontWeight: FontWeight.w600,
                      onPressed: () {
                        mainTabCurrentIndex.value = 0;
                      },
                    );
                  }),
                  Obx(() {
                    return TextButtonWidget(
                      text: AppStrings.shows.tr,
                      textColor: AppColors.black80Percent,
                      fontSize: 14,
                      decoration: mainTabCurrentIndex.value == 1
                          ? TextDecoration.underline
                          : null,
                      fontWeight: FontWeight.w600,
                      onPressed: () {
                        mainTabCurrentIndex.value = 1;
                      },
                    );
                  }),
                  Obx(() {
                    return TextButtonWidget(
                      text: AppStrings.reviews.tr,
                      textColor: AppColors.black80Percent,
                      fontSize: 14,
                      decoration: mainTabCurrentIndex.value == 2
                          ? TextDecoration.underline
                          : null,
                      fontWeight: FontWeight.w600,
                      onPressed: () {
                        mainTabCurrentIndex.value = 2;
                      },
                    );
                  }),
                  Obx(() {
                    return TextButtonWidget(
                      text: AppStrings.clips.tr,
                      textColor: AppColors.black80Percent,
                      fontSize: 14,
                      decoration: mainTabCurrentIndex.value == 3
                          ? TextDecoration.underline
                          : null,
                      fontWeight: FontWeight.w600,
                      onPressed: () {
                        mainTabCurrentIndex.value = 3;
                      },
                    );
                  }),
                ],
              ),
              Obx(() {
                return IndexedStack(
                  index: mainTabCurrentIndex.value,
                  children: [ShopTab(), ShowsTab(), ReviewTab(), ClipsTab()],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
