import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/app_colors/app_colors.dart';
import '../../../utils/app_strings/app_strings.dart';
import '../../../widgets/text_widget/text_widgets.dart';
import '../../../widgets/tile_button/tile_button.dart';

class AccountInformationUpdateScreen extends StatelessWidget {
  const AccountInformationUpdateScreen({super.key});

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
            TileButton(title: AppStrings.updateEmail.tr, defaultIcon: Icons.email_outlined,),
            TileButton(title: AppStrings.updatePhoneNumber.tr, defaultIcon: Icons.phone_enabled_outlined,),
            TileButton(title: AppStrings.updatePassword.tr, defaultIcon: Icons.lock_open,),
          ],
        ),
      ),
    );
  }
}
