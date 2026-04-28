import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/widgets/custom_button.dart';
import 'package:musaab_adam/widgets/choice_chip_widget/custom_choice_chip.dart';
import 'package:musaab_adam/widgets/text_button_widget/text_button_widget.dart';

import '../../core/assets_gen/assets.gen.dart';
import '../../core/utils/app_strings.dart';
import '../../core/widgets/custom_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: Icon(Icons.arrow_back_ios_new_rounded),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            spacing: 20.h,
            children: [
              Center(
                child: Stack(
                  children: [
                    // CircleAvatar(
                    //   backgroundImage: AssetImage(
                    //     Assets.images.userPhoto2.keyName,
                    //   ),
                    //   radius: 52.r,
                    // ),
                    Positioned(
                      bottom: 8.h,
                      right: 8.w,
                      child: SvgPicture.asset(Assets.icons.camera),
                    ),
                  ],
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
                          text: "Rating",
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
                          text: "Sold",
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
                    ),
                  ),
                  Expanded(
                    child: CustomButton(
                      label: AppStrings.editProfile.tr,
                      backgroundColor: AppColors.primaryColor,
                      buttonHeight: 40,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 15.w,
                children: [
                  TextButtonWidget(
                    text: AppStrings.shop.tr,
                    textColor: AppColors.black80Percent,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w600,
                  ),
                  TextButtonWidget(
                    text: AppStrings.shows.tr,
                    textColor: AppColors.black80Percent,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w600,
                  ),
                  TextButtonWidget(
                    text: AppStrings.reviews.tr,
                    textColor: AppColors.black80Percent,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w600,
                  ),
                  TextButtonWidget(
                    text: AppStrings.clips.tr,
                    textColor: AppColors.black80Percent,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              SearchBar(
                elevation: WidgetStateProperty.all(0),
                backgroundColor: WidgetStateProperty.all(Colors.transparent),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(width: 2, color: AppColors.primaryColor),
                  ),
                ),
                trailing: [Icon(Icons.search, color: AppColors.primaryColor)],
              ),
              Row(
                spacing: 10.w,
                children: [
                  CustomChoiceChip(
                    label: AppStrings.all.tr,
                    selected: true,
                    colorChangeable: true,
                    borderRadius: 100,
                    padding: [10, 4],
                    showShadow: true,
                    onSelected: (isSelected) {},
                  ),
                  CustomChoiceChip(
                    label: AppStrings.active.tr,
                    selected: false,
                    colorChangeable: true,
                    borderRadius: 100,
                    padding: [10, 4],
                    showShadow: true,
                    onSelected: (isSelected) {},
                  ),
                  CustomChoiceChip(
                    label: AppStrings.inactive.tr,
                    selected: false,
                    colorChangeable: true,
                    borderRadius: 100,
                    padding: [10, 4],
                    showShadow: true,
                    onSelected: (isSelected) {},
                  ),
                  CustomChoiceChip(
                    label: AppStrings.sold.tr,
                    selected: false,
                    colorChangeable: true,
                    borderRadius: 100,
                    padding: [10, 4],
                    showShadow: true,
                    onSelected: (isSelected) {},
                  ),
                ],
              ),
              IndexedStack(
                index: 3,
                children: [
                  shopItems(),
                  showsItems(),
                  reviewsList(),
                  clipsList()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  //SHOP
  shopItems() {
    return Align(
      alignment: AlignmentGeometry.centerLeft,
      child: CustomText(text: "0 items", textAlignment: TextAlign.start),
    );
  }

  //SHOWS ITEMS
  showsItems() {
    return Align(
      alignment: AlignmentGeometry.centerLeft,
      child: CustomText(text: "0 items", textAlignment: TextAlign.start),
    );
  }

  //REVIEWS LIST
  reviewsList(){
    return Column(
      children: [
        reviewItem(),
        reviewItem(),
        reviewItem(),
        reviewItem(),
      ],
    );
  }

  //REVIEWS ITEM
  reviewItem() {
    return ListTile(
      // leading: CircleAvatar(
      //   radius: 40,
      //   backgroundImage: AssetImage(Assets.images.userPhoto2.keyName),
      // ),
      title: CustomText(text: "Isabella Silveria",
      maxLines: 1,
      fontWeight: FontWeight.w700,
        textAlignment: TextAlign.start,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: CustomText(text: "Desenvolvedora",
      fontSize: 14,
      fontColor: AppColors.black50Percent,
        textAlignment: TextAlign.start,
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star, color: Colors.orangeAccent, size: 16,),
          Icon(Icons.star, color: Colors.orangeAccent, size: 16,),
          Icon(Icons.star, color: Colors.orangeAccent, size: 16,),
          Icon(Icons.star, color: Colors.orangeAccent, size: 16,),
          Icon(Icons.star, color: Colors.orangeAccent, size: 16,),
        ],
      ),
    );
  }

  //CLIPS LIST
clipsList(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(Assets.dummy.clipsPlaceholder.keyName),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(Assets.dummy.clipsPlaceholder.keyName),
        )
      ],
    );
}
}
