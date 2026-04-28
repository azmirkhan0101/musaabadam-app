import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../modules/auth/controllers/auth_controller.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/custom_text.dart';
import '../../../widgets/tile_button/tile_button.dart';

class GeneralIssuesScreen extends StatelessWidget {

  final AuthController authController = Get.find<AuthController>();
  GeneralIssuesScreen({super.key});

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
            TileButton(title: AppStrings.appFeaturesOrFeedback.tr, defaultIcon: Icons.feedback_outlined,),
            TileButton(title: AppStrings.featureRequest.tr, defaultIcon: Icons.app_shortcut_sharp, ),
            TileButton(title: AppStrings.legalAndSafety.tr, defaultIcon: Icons.health_and_safety,),
            TileButton(title: AppStrings.policies.tr, defaultIcon: Icons.policy_outlined,),
            TileButton(title: AppStrings.referralCredits.tr, defaultIcon: Icons.credit_score_outlined,),
            TileButton(title: AppStrings.reportAUser.tr, defaultIcon: Icons.report,),
            //SELLER SPECIFIC OPTIONS
            if( authController.isSeller.value )...[
              TileButton(title: AppStrings.liveRecordingRequest.tr, defaultIcon: Icons.live_tv,),
              TileButton(title: AppStrings.salesDataRequest.tr, defaultIcon: Icons.add_shopping_cart_rounded,),
              TileButton(title: AppStrings.showSchedulingHelp.tr, defaultIcon: Icons.schedule,),
              TileButton(title: AppStrings.marketingAndPromotions.tr, defaultIcon: Icons.reviews,),
              TileButton(title: AppStrings.appealAReview.tr, defaultIcon: Icons.reviews,),
            ]
          ],
        ),
      ),
    );
  }
}
