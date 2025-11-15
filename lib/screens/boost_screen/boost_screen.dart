import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';
import 'package:musaab_adam/utils/app_strings/app_strings.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';

import '../../utils/assets_gen/assets.gen.dart';
import '../../widgets/button_widget/button_widget.dart';

class BoostScreen extends StatelessWidget {
  const BoostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: Icon(Icons.close),
        title: TextWidget(text: AppStrings.boostSeller.tr),
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
                TextWidget(text: AppStrings.sendATip)
              ],
            ),
            SizedBoxWidget(height: 25,),
            Row(
              children: [
                SvgPicture.asset(Assets.icons.communityBoost),
                SizedBoxWidget(width: 18,),
                TextWidget(text: AppStrings.communityBoost)
              ],
            ),
            SizedBoxWidget(height: 25,),
            Row(
              children: [
                SizedBoxWidget(width: 15,),
                Expanded(
                  child: ButtonWidget(
                    label: AppStrings.learnMore.tr,
                    backgroundColor: AppColors.grey86,
                    buttonHeight: 40,
                  ),
                ),
                SizedBoxWidget(width: 15,),
                Expanded(
                  child: ButtonWidget(
                    label: AppStrings.sendTip.tr,
                    backgroundColor: AppColors.brandColorShade,
                    buttonHeight: 40,
                    textColor: AppColors.brandColor,
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
