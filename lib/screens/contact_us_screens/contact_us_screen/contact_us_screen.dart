import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/controllers/auth_controller/auth_controller.dart';
import 'package:musaab_adam/routes/app_pages/app_pages.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';
import 'package:musaab_adam/utils/app_strings/app_strings.dart';
import 'package:musaab_adam/utils/assets_gen/assets.gen.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';
import 'package:musaab_adam/widgets/tile_button/tile_button.dart';

class ContactUsScreen extends StatelessWidget {

  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: TextWidget(text: AppStrings.contactUs.tr),
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
                Get.toNamed(AppRoutes.PAYOUT_SCREEN);
              },),
            ],
            TileButton(title: AppStrings.account.tr, defaultIcon: Icons.person_outline_outlined, isIconDefault: true,onClick: (){
              Get.toNamed(AppRoutes.UPDATE_PROFILE_SCREEN);
            },),
            TileButton(title: AppStrings.general.tr, svgIconPath: Assets.icons.general, isIconDefault: false,onClick: (){
              Get.toNamed(AppRoutes.PAYOUT_SCREEN);
            },),
          ],
        ),
      ),
    );
  }
}
