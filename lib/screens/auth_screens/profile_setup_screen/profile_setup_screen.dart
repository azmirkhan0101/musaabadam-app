import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/screens/auth_screens/profile_setup_screen/controllers/profile_setup_controller.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';
import 'package:musaab_adam/utils/app_strings/app_strings.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/widgets/text_field_widget/text_field_widget.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';

import '../../../utils/assets_gen/assets.gen.dart';

class ProfileSetupScreen extends StatelessWidget {

  final ProfileSetupController controller = ProfileSetupController();

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
        title: TextWidget(
          text: AppStrings.setupProfile,
          fontWeight: FontWeight.w600,
          fontColor: AppColors.black,
          fontSize: 24,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBoxWidget( height: 20,),
              Align(
                alignment: Alignment.topCenter,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.w),
                      child: CircleAvatar(
                          radius: 53.h,
                          backgroundImage: NetworkImage(
                              controller.userProfilePhoto
                          )
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: IconButton(onPressed: (){},
                          icon: SvgPicture.asset(Assets.icons.camera
                          )
                            )
                      ),

                  ]
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: TextWidget(text: controller.userProfileName,
                fontWeight: FontWeight.w700,
                fontColor: AppColors.black,
                  fontSize: 20,
                ),
              ),
              SizedBoxWidget(height: 15,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: TextWidget(text: AppStrings.bio.tr,
                  fontColor: AppColors.black,
                  fontSize: 18,
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 30.h),
              child: TextFieldWidget(hint: "",
                  controller: controller.bioController,
                borderRadius: 10,
              ),
              )
            ]
          )
      ),
    );
  }
}
