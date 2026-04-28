import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/screens/account_screens/update_profile_screen/controllers/update_profile_screen_controller.dart.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';

import '../../../core/assets_gen/assets.gen.dart';
import '../../../routes/app_pages.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../widgets/sized_box_widget/sized_box_widget.dart';
import '../../../widgets/text_field_widget/custom_text_field.dart';

class UpdateProfileScreen extends StatelessWidget {

  final UpdateProfileScreenController controller = Get.find<UpdateProfileScreenController>();

  UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: Icon(Icons.arrow_back_ios_new_rounded),
        title: CustomText(text: AppStrings.profile.tr),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBoxWidget( height: 20,),
                  //===================USER PHOTO=========================//
                  Align(
                    alignment: Alignment.topCenter,
                    child: Stack(
                        children: [
                          CircleAvatar(
                              radius: 53.r,
                              backgroundImage: NetworkImage(
                                  controller.userProfilePhoto
                              )
                          ),
                          Positioned(
                              bottom: -5.r,
                              right: -5.r,
                              child: IconButton(onPressed: (){},
                                  icon: SvgPicture.asset(Assets.icons.camera
                                  )
                              )
                          ),

                        ]
                    ),
                  ),
                  //===================USER PROFILE NAME=========================//
                  Align(
                    alignment: Alignment.center,
                    child: CustomText(text: controller.userProfileName,
                      fontWeight: FontWeight.w700,
                      fontColor: AppColors.black,
                      fontSize: 20,
                    ),
                  ),
                  SizedBoxWidget(height: 15,),
                  //===================BIO=========================//
                  CustomTextField(
                      hintText: "Jeremy Drake",
                      controller: controller.bioController,
                    borderRadius: 8,
                    borderColor: AppColors.primaryColor,
                    //prefixIcon: Icons.person_2_outlined,
                  ),
                  SizedBoxWidget(height: 15,),
                  CustomTextField(
                    hintText: "henry@mail.com",
                    controller: controller.bioController,
                    borderRadius: 8,
                    borderColor: AppColors.primaryColor,
                    //prefixIcon: Icons.email_outlined,
                  ),
                  SizedBoxWidget(height: 15,),
                  CustomTextField(
                    hintText: "(480) 555-3434",
                    controller: controller.bioController,
                    borderRadius: 8,
                    borderColor: AppColors.primaryColor,
                    //prefixIcon: Icons.call_outlined,
                  ),
                  SizedBoxWidget(height: 15,),
                  CustomTextField(
                    hintText: "2955 washterimer RD. santa area, sans Fransicco",
                    controller: controller.bioController,
                    borderRadius: 8,
                    borderColor: AppColors.primaryColor,
                    //prefixIcon: Icons.location_on_outlined,
                  ),
                  SizedBoxWidget(height: 12,),
                  //===================CONTINUE BUTTON=========================//
                  CustomButton(
                    label: AppStrings.updateProfile.tr,
                    buttonHeight: 40.h,
                    buttonWidth: double.infinity,
                    backgroundColor: AppColors.primaryColor,
                    buttonRadius: 8,
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
