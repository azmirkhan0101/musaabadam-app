import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/app_colors/app_colors.dart';
import '../../../utils/app_strings/app_strings.dart';
import '../../../utils/assets_gen/assets.gen.dart';
import '../../../widgets/text_widget/text_widgets.dart';
import '../../../widgets/tile_button/tile_button.dart';

class PayoutScreen extends StatelessWidget {
  const PayoutScreen({super.key});

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
            TileButton(title: AppStrings.addNewPayoutMethod.tr, svgIconPath: Assets.icons.newPayment, isIconDefault: false,),
            TileButton(title: AppStrings.earlyPayoutAccess.tr, svgIconPath: Assets.icons.earlyPayout, isIconDefault: false,),
            TileButton(title: AppStrings.feeInquiries.tr, svgIconPath: Assets.icons.feeInquiry, isIconDefault: false,),
            TileButton(title: AppStrings.incorrectBalance.tr, svgIconPath: Assets.icons.insufficientBalance, isIconDefault: false,),
            TileButton(title: AppStrings.paypalCashOutError.tr, svgIconPath: Assets.icons.paypal, isIconDefault: false,),
            TileButton(title: AppStrings.stripeCashOutError.tr, svgIconPath: Assets.icons.stripe, isIconDefault: false,),
          ],
        ),
      ),
    );
  }
}
