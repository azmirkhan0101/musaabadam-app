import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/custom_button.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';
import 'package:musaab_adam/core/widgets/photo_edit_widget.dart';
import 'package:musaab_adam/routes/app_pages.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/widgets/text_field_widget/custom_text_field.dart';

import '../../../core/utils/app_constants.dart';
import '../../../widgets/category_item/category_item.dart';


class ProfileSetupScreen extends StatelessWidget {

final String userProfileName = "Jeremy Drake";
  final TextEditingController bioController = TextEditingController();

  ProfileSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light
        ),
        title: CustomText(
          text: AppStrings.setupProfile,
          fontWeight: FontWeight.w600,
          fontColor: AppColors.black,
          fontSize: 24,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBoxWidget( height: 20,),
                //===================USER PHOTO=========================//
                Align(
                  alignment: Alignment.topCenter,
                  child: PhotoEditWidget(

                  )
                ),
                const SizedBox(height: 20,),
                //===================USER PROFILE NAME=========================//
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextField(
                      hintText: AppStrings.name,
                    ),
                  ),
                ),
                SizedBoxWidget(height: 15,),
                //===================BIO=========================//
                CustomText(text: AppStrings.bio.tr,
                  fontColor: AppColors.black,
                  fontSize: 18,
                ),
                SizedBoxWidget(height: 8),
                CustomTextField(
                  hintText: "",
                    controller: bioController,
                  maxLines: 3,
                  maxLength: 500,
                  borderRadius: 10,
                ),
                SizedBoxWidget(height: 12),
                CustomText(text: AppStrings.preference,),
                CustomText(text: AppStrings.pickAFewToGetStarted,
                fontSize: 14,
                  fontColor: AppColors.grey8C,
                ),
                SizedBoxWidget(
                  height: 15,
                ),
                //===================HORIZONTAL SCROLL ITEMS=========================//
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBoxWidget(
                        width: 30.w,
                      ),
                      CategoryItem(image: Dummy.product1, itemName: "Watch"),
                      CategoryItem(image: Dummy.product1, itemName: "Watch"),
                      CategoryItem(image: Dummy.product1, itemName: "Watch"),
                      CategoryItem(image: Dummy.product1, itemName: "Watch"),
                      CategoryItem(image: Dummy.product1, itemName: "Watch"),
                      CategoryItem(image: Dummy.product1, itemName: "Watch"),
                      CategoryItem(image: Dummy.product1, itemName: "Watch"),
                      SizedBoxWidget(
                        width: 20.w,
                      )
                    ],
                  ),
                ),
                SizedBoxWidget(height: 12,),
                //===================CONTINUE BUTTON=========================//
                CustomButton(
                  label: AppStrings.continuee,
                buttonHeight: 40.h,
                  buttonRadius: 8,
                  onPressed: (){
                  //TODO: GO TO LIVE STREAMING PLAYER SCREEN
                    Get.toNamed(AppRoutes.mainScreen);
                  },
                )
              ]
            ),
          )
      ),
    );
  }
}
