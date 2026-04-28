import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/modules/auth/controllers/auth_controller.dart';
import 'package:musaab_adam/routes/app_pages.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';
import 'package:musaab_adam/widgets/tile_button/tile_button.dart';

import '../../../core/assets_gen/assets.gen.dart';

class ContactUsScreen extends StatelessWidget {

  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: CustomText(text: AppStrings.contactUs.tr),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_new_rounded),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          spacing: 10.h,
          children: [
            //SELLER OPTIONS
            if( authController.isSeller.value )...[
              TileButton(title: AppStrings.payouts.tr, svgIconPath: Assets.icons.payouts, isIconDefault: false, onClick: (){
                Get.toNamed(AppRoutes.payoutScreen);
              },),
            ],
            TileButton(title: AppStrings.account.tr, defaultIcon: Icons.person_outline_outlined, isIconDefault: true,onClick: (){
              Get.toNamed(AppRoutes.updateProfileScreen);
            },),
            TileButton(title: AppStrings.general.tr, svgIconPath: Assets.icons.general, isIconDefault: false,onClick: (){
              Get.toNamed(AppRoutes.payoutScreen);
            },),
          ],
        ),
      ),
    );
  }
}
