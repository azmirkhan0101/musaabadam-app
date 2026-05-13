import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_constants.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/cached_image_widget.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';
import 'package:musaab_adam/core/widgets/photo_edit_widget.dart';

import '../../../core/assets_gen/assets.gen.dart';
import '../../../routes/app_pages.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../widgets/sized_box_widget/sized_box_widget.dart';
import '../../../core/widgets/custom_text_field.dart';

class UpdateProfileScreen extends StatelessWidget {

  UpdateProfileScreen({super.key});

final String userProfileName = "Jeremy Drake";
  final TextEditingController bioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: const BackButton(style: ButtonStyle(),),
        title: CustomText(
            text: AppStrings.profile.tr,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              spacing: 10,
              mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBoxWidget( height: 20,),
                  //===================USER PHOTO=========================//
                  PhotoEditWidget(
                    imageUrl: Dummy.user1,
                  ),
                  //===================USER PROFILE NAME=========================//
                  Align(
                    alignment: Alignment.center,
                    child: CustomText(text: userProfileName,
                      fontWeight: FontWeight.w700,
                      fontColor: AppColors.black,
                      fontSize: 20,
                    ),
                  ),
                  SizedBoxWidget(height: 15,),
                  //===================BIO=========================//
                  CustomTextField(
                      hintText: "Jeremy Drake",
                      controller: bioController,
                    borderRadius: 8,
                    borderColor: AppColors.primaryColor,
                    prefixIcon: Assets.icons.username,
                  ),
                  SizedBoxWidget(height: 15,),
                  CustomTextField(
                    hintText: "henry@mail.com",
                    controller: bioController,
                    borderRadius: 8,
                    borderColor: AppColors.primaryColor,
                    prefixIcon: Assets.icons.mail,
                  ),
                  SizedBoxWidget(height: 15,),
                  CustomTextField(
                    hintText: "(480) 555-3434",
                    controller: bioController,
                    borderRadius: 8,
                    borderColor: AppColors.primaryColor,
                    prefixIcon: Assets.icons.phone,
                  ),
                  SizedBoxWidget(height: 15,),
                  CustomTextField(
                    hintText: "2955 washterimer RD. santa area, sans Fransicco",
                    controller: bioController,
                    borderRadius: 8,
                    borderColor: AppColors.primaryColor,
                    prefixIcon: Assets.icons.locationPin,
                  ),
                  SizedBoxWidget(height: 12,),
                  //===================CONTINUE BUTTON=========================//
                  const SizedBox(height: 30,),
                  CustomButton(
                    label: AppStrings.updateProfile.tr,
                    buttonHeight: 40.h,
                    backgroundColor: AppColors.primaryColor,
                    buttonRadius: 12,
                    onPressed: (){
                      Get.toNamed(AppRoutes.mainScreen);
                    },
                  ),
                ]
            ),
          )
      ),
    );
  }
}
