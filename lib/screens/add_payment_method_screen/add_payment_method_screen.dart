import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';
import 'package:musaab_adam/widgets/button_widget/button_widget.dart';
import 'package:musaab_adam/widgets/choice_chip_widget/choice_chip_widget.dart';

import '../../utils/app_strings/app_strings.dart';
import '../../utils/assets_gen/assets.gen.dart';
import '../../widgets/sized_box_widget/sized_box_widget.dart';
import '../../widgets/text_widget/text_widgets.dart';

class AddPaymentMethodScreen extends StatelessWidget {
  const AddPaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: Icon(Icons.arrow_back_ios_new_rounded),
        title: TextWidget(text: AppStrings.addPaymentMethod.tr),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBoxWidget(height: 25,),
            IntrinsicWidth(
              child: ChoiceChipWidget(
                  label: AppStrings.creditDebitCard.tr,
                  selected: true,
                  onSelected: (isSelected){},
                trailing: Icon(Icons.arrow_forward_ios_rounded, color: AppColors.white, size: 16.sp,),
                borderRadius: 8,
                colorChangeable: true,
              ),
            ),
            SizedBoxWidget(height: 15,),
            IntrinsicWidth(
              child: ChoiceChipWidget(
                label: AppStrings.stripe,
                selected: true,
                onSelected: (isSelected){},
                trailing: Icon(Icons.arrow_forward_ios_rounded, color: AppColors.white, size: 16.sp,),
                borderRadius: 8,
                colorChangeable: true,
              ),
            ),
            Expanded(
              child: SafeArea(
                child: Align(
                  alignment: AlignmentGeometry.bottomCenter,
                  child: Row(
                    children: [
                      SizedBoxWidget(width: 15,),
                      Expanded(
                        child: ButtonWidget(
                          label: AppStrings.cancel.tr,
                          backgroundColor: AppColors.grey86,
                          buttonHeight: 40,
                        ),
                      ),
                      SizedBoxWidget(width: 15,),
                      Expanded(
                        child: ButtonWidget(
                          label: AppStrings.save.tr,
                          backgroundColor: AppColors.brandColorShade,
                          buttonHeight: 40,
                          textColor: AppColors.brandColor,
                        ),
                      ),
                      SizedBoxWidget(width: 15,),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
