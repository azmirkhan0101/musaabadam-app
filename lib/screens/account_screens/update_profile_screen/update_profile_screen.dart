import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/screens/account_screens/update_profile_screen/controllers/update_profile_screen_controller.dart.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';
import 'package:musaab_adam/utils/app_strings/app_strings.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';

import '../../../routes/app_pages/app_pages.dart';
import '../../../utils/assets_gen/assets.gen.dart';
import '../../../widgets/button_widget/button_widget.dart';
import '../../../widgets/sized_box_widget/sized_box_widget.dart';
import '../../../widgets/text_field_widget/text_field_widget.dart';

class UpdateProfileScreen extends StatelessWidget {

  final UpdateProfileScreenController controller = Get.find<UpdateProfileScreenController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: Icon(Icons.arrow_back_ios_new_rounded),
        title: TextWidget(text: AppStrings.profile.tr),
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
                    child: TextWidget(text: controller.userProfileName,
                      fontWeight: FontWeight.w700,
                      fontColor: AppColors.black,
                      fontSize: 20,
                    ),
                  ),
                  SizedBoxWidget(height: 15,),
                  //===================BIO=========================//
                  TextFieldWidget(
                      hint: "Jeremy Drake",
                      controller: controller.bioController,
                    borderRadius: 8,
                    borderColor: AppColors.brandColor,
                    prefixIcon: Icons.person_2_outlined,
                  ),
                  SizedBoxWidget(height: 15,),
                  TextFieldWidget(
                    hint: "henry@mail.com",
                    controller: controller.bioController,
                    borderRadius: 8,
                    borderColor: AppColors.brandColor,
                    prefixIcon: Icons.email_outlined,
                  ),
                  SizedBoxWidget(height: 15,),
                  TextFieldWidget(
                    hint: "(480) 555-3434",
                    controller: controller.bioController,
                    borderRadius: 8,
                    borderColor: AppColors.brandColor,
                    prefixIcon: Icons.call_outlined,
                  ),
                  SizedBoxWidget(height: 15,),
                  TextFieldWidget(
                    hint: "2955 washterimer RD. santa area, sans Fransicco",
                    controller: controller.bioController,
                    borderRadius: 8,
                    borderColor: AppColors.brandColor,
                    prefixIcon: Icons.location_on_outlined,
                  ),
                  SizedBoxWidget(height: 12,),
                  //===================CONTINUE BUTTON=========================//
                  ButtonWidget(label: AppStrings.updateProfile.tr,
                    buttonHeight: 40.h,
                    buttonWidth: double.infinity,
                    backgroundColor: AppColors.brandColor,
                    buttonRadius: 8,
                    onPressed: (){
                      //TODO:
                      Get.toNamed(AppRoutes.MAIN_SCREEN);
                    },
                  ),
                ]
            ),
          )
      ),
    );
  }
}
