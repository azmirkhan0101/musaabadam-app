import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/app_colors/app_colors.dart';
import '../../../utils/app_strings/app_strings.dart';
import '../../../widgets/text_widget/text_widgets.dart';
import '../../../widgets/tile_button/tile_button.dart';

class AccountIssuesScreen extends StatelessWidget {

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
            TileButton(title: AppStrings.accountDeletion.tr, defaultIcon: Icons.person_remove_alt_1_outlined,),
            TileButton(title: AppStrings.banningOrBanned.tr, defaultIcon: Icons.block,),
            TileButton(title: AppStrings.duplicateAccount.tr, defaultIcon: Icons.switch_account_outlined,),
            TileButton(title: AppStrings.orderHistoryRequest.tr, defaultIcon: Icons.history_outlined,),
            TileButton(title: AppStrings.referralCreditInquiries.tr, defaultIcon: Icons.credit_score_outlined,),
            TileButton(title: AppStrings.updateAccountInformation.tr, defaultIcon: Icons.tips_and_updates_outlined, ),
          ],
        ),
      ),
    );
  }
}
