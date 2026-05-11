import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';

import '../../../core/assets_gen/assets.gen.dart';
import '../../../widgets/image_widget/image_widget.dart';

class MyRewardsScreen extends StatelessWidget {
  const MyRewardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        forceMaterialTransparency: true,
        centerTitle: true,
        title: CustomText(text: AppStrings.myRewards.tr, fontSize: 18, fontWeight: FontWeight.w700,),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40,),
          Center(child: ImageWidget(width: 183, height: 153, imagePath: Assets.images.giftBox.keyName)),
          const SizedBox(height: 30,),
          CustomText(text: AppStrings.theresNothingHereAtTheMoment)

        ],
      ),
    );
  }
}
