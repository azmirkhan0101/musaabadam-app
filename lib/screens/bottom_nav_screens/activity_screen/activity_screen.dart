import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';

import 'components/app_bar.dart';
import 'components/chip_buttons.dart';

class ActivityScreen extends StatelessWidget {

  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar,
      body: Column(
        children: [
          Row(
            children: [
              TextButton(onPressed: (){},
                child: CustomText(
                  text: AppStrings.purchases.tr,
                  underline: isSelected ? true : false,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  underlineWidth: 2,
                ),
              ),
              TextButton(onPressed: (){},
                child: CustomText(
                  text: AppStrings.bids.tr,
                  underline: isSelected ? true : false,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  underlineWidth: 2,
                ),
              ),
              TextButton(onPressed: (){},
                child: CustomText(
                  text: AppStrings.offers.tr,
                  underline: isSelected ? true : false,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  underlineWidth: 2,
                ),
              ),
              TextButton(onPressed: (){},
                child: CustomText(
                  text: AppStrings.saved.tr,
                  underline: isSelected ? true : false,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  underlineWidth: 2,
                ),
              ),
            ],
          ),
          chipButtons
        ],
      ),
    );
  }
}
