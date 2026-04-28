import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/custom_button.dart';
import 'package:musaab_adam/widgets/labeled_iconbutton/labeled_iconbutton.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/widgets/text_field_widget/custom_text_field.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';

import '../../core/assets_gen/assets.gen.dart';


class OrderSupportScreen extends StatelessWidget {

  String issueTitle = Get.arguments;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: CustomText(text: AppStrings.orderSupport.tr),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_new_rounded),
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Align(
            alignment: AlignmentGeometry.centerLeft,
            child: CustomText(text: issueTitle,
            fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBoxWidget(height: 10,),
          CustomTextField(
              hintText: AppStrings.describeTheIssue.tr,
              controller: controller,
            borderRadius: 10,
            borderColor: AppColors.primaryColor,
            maxLines: 4,
          ),
          SizedBoxWidget(height: 30,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                Expanded(
                  child: LabeledIconButton(
                      iconPath: Assets.icons.photoIcon,
                      text: AppStrings.uploadPhotos.tr,
                    isLabelInside: true,
                    fontColor: AppColors.primaryColor,
                    color: AppColors.brandColorShade,
                    padding: [ 0, 50 ],
                    borderRadius: 8,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Align(
                alignment: AlignmentGeometry.bottomCenter,
                child: CustomButton(
                    label: AppStrings.submit.tr,
                  buttonHeight: 40,
                  fontSize: 14,
                  backgroundColor: AppColors.primaryColor,
                ),
              ),
          ),
          SizedBoxWidget(height: 35,)
        ],
      ),
      ),
    );
  }
}
