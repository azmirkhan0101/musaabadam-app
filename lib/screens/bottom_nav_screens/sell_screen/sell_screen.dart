import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';
import 'package:musaab_adam/utils/app_strings/app_strings.dart';
import 'package:musaab_adam/widgets/button_widget/button_widget.dart';
import 'package:musaab_adam/widgets/image_widget/image_widget.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';
import 'package:musaab_adam/widgets/tile_button/tile_button.dart';

import '../../../utils/assets_gen/assets.gen.dart';
import '../../../widgets/labeled_iconbutton/labeled_iconbutton.dart';
import '../../../widgets/sized_box_widget/sized_box_widget.dart';

class SellScreen extends StatelessWidget {
  const SellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: TextWidget(text: AppStrings.sellerHub.tr),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric( horizontal: 20.w ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: LabeledIconButton(
                    iconPath: Assets.icons.createProduct,
                    iconHeight: 33,
                    iconWidth: 33,
                    text: AppStrings.createAProduct.tr,
                    fontColor: AppColors.white,
                    isLabelInside: true,
                    borderRadius: 8,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    padding: [ 0, 18 ],
                    onClick: (){
                      //Get.toNamed(AppRoutes.INVITE_SCREEN);
                    },
                  ),
                ),
                SizedBoxWidget(width: 15,),
                Expanded(
                  child: LabeledIconButton(
                    iconPath: Assets.icons.scheduleShow,
                    iconHeight: 33,
                    iconWidth: 33,
                    text: AppStrings.scheduleAShow.tr,
                    fontColor: AppColors.white,
                    isLabelInside: true,
                    borderRadius: 8,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    padding: [ 0, 18 ],
                    onClick: (){
                      //Get.toNamed(AppRoutes.MY_REWARDS_SCREEN);
                    },
                  ),
                )
              ],
            ),
            SizedBoxWidget( height: 20,),
            TextWidget(text: AppStrings.fulfillment.tr,
            ),
            TileButton(title: AppStrings.readyToShip.tr,
            defaultIcon: Icons.lightbulb_outlined,
            ),
            SizedBoxWidget( height: 20,),
            TextWidget(text: AppStrings.accountHealth.tr),
            TextWidget(text: AppStrings.policyStanding.tr,
            fontColor: AppColors.black80Percent,
              fontSize: 14,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric( horizontal: 10.w, vertical: 5.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 1.r,
                  color: AppColors.brandColor,
                )
              ),
              child: TextWidget(text: AppStrings.excellent.tr, textAlignment: TextAlign.start,),
            ),
            SizedBoxWidget(height: 20,),
            TextWidget(text: AppStrings.upcomingShows.tr),
            SizedBoxWidget(height: 20,),
            Center(child: ImageWidget(width: 174, height: 160, imagePath: Assets.images.upcomingShowsPlaceholder.keyName)),
            SizedBoxWidget(height: 25,),
            ButtonWidget(label: AppStrings.scheduleAShow.tr,
            backgroundColor: AppColors.brandColor,
              buttonWidth: double.infinity,
              fontSize: 14,
              buttonHeight: 40,
            )
          ],
        ),
      )
    );
  }
}
