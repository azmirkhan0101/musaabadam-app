import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';

import '../../core/assets_gen/assets.gen.dart';
import '../../core/widgets/custom_button.dart';

class BoostScreen extends StatelessWidget {
  const BoostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: Icon(Icons.close),
        title: CustomText(text: AppStrings.boostSeller.tr),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          children: [
            SizedBoxWidget(height: 25,),
            Row(
              children: [
                SvgPicture.asset(Assets.icons.sendATip),
                SizedBoxWidget(width: 15,),
                CustomText(text: AppStrings.sendATip)
              ],
            ),
            SizedBoxWidget(height: 25,),
            Row(
              children: [
                SvgPicture.asset(Assets.icons.communityBoost),
                SizedBoxWidget(width: 18,),
                CustomText(text: AppStrings.communityBoost)
              ],
            ),
            SizedBoxWidget(height: 25,),
            Row(
              children: [
                SizedBoxWidget(width: 15,),
                Expanded(
                  child: CustomButton(
                    label: AppStrings.learnMore.tr,
                    backgroundColor: AppColors.grey86,
                    buttonHeight: 40,
                  ),
                ),
                SizedBoxWidget(width: 15,),
                Expanded(
                  child: CustomButton(
                    label: AppStrings.sendTip.tr,
                    backgroundColor: AppColors.brandColorShade,
                    buttonHeight: 40,
                    textColor: AppColors.primaryColor,
                  ),
                ),
                SizedBoxWidget(width: 15,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
