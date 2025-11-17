import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/utils/app_strings/app_strings.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';

import 'components/app_bar.dart';
import 'components/chip_buttons.dart';

class ActivityScreen extends StatelessWidget {

  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          Row(
            children: [
              TextButton(onPressed: (){},
                child: TextWidget(
                  text: AppStrings.purchases.tr,
                  underline: isSelected ? true : false,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  underlineWidth: 2,
                ),
              ),
              TextButton(onPressed: (){},
                child: TextWidget(
                  text: AppStrings.bids.tr,
                  underline: isSelected ? true : false,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  underlineWidth: 2,
                ),
              ),
              TextButton(onPressed: (){},
                child: TextWidget(
                  text: AppStrings.offers.tr,
                  underline: isSelected ? true : false,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  underlineWidth: 2,
                ),
              ),
              TextButton(onPressed: (){},
                child: TextWidget(
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
