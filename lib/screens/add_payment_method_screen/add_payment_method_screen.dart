import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/widgets/custom_button.dart';
import 'package:musaab_adam/core/widgets/custom_choice_chip.dart';

import '../../core/utils/app_strings.dart';
import '../../widgets/sized_box_widget/sized_box_widget.dart';
import '../../core/widgets/custom_text.dart';

class AddPaymentMethodScreen extends StatelessWidget {
  const AddPaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: Icon(Icons.arrow_back_ios_new_rounded),
        title: CustomText(text: AppStrings.addPaymentMethod.tr),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBoxWidget(height: 25,),
            IntrinsicWidth(
              child: CustomChoiceChip(
                  label: AppStrings.creditDebitCard.tr,
                  selected: true,
                  onSelected: (isSelected){},
                trailing: Icon(Icons.arrow_forward_ios_rounded, color: AppColors.backgroundColor, size: 16.sp,),
                borderRadius: 8,
                colorChangeable: true,
              ),
            ),
            SizedBoxWidget(height: 15,),
            IntrinsicWidth(
              child: CustomChoiceChip(
                label: AppStrings.stripe,
                selected: true,
                onSelected: (isSelected){},
                trailing: Icon(Icons.arrow_forward_ios_rounded, color: AppColors.backgroundColor, size: 16.sp,),
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
                        child: CustomButton(
                          label: AppStrings.cancel.tr,
                          backgroundColor: AppColors.grey86,
                          buttonHeight: 40,
                        ),
                      ),
                      SizedBoxWidget(width: 15,),
                      Expanded(
                        child: CustomButton(
                          label: AppStrings.save.tr,
                          backgroundColor: AppColors.brandColorShade,
                          buttonHeight: 40,
                          textColor: AppColors.primaryColor,
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
