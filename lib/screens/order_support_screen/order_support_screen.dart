import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';
import 'package:musaab_adam/utils/app_strings/app_strings.dart';
import 'package:musaab_adam/widgets/button_widget/button_widget.dart';
import 'package:musaab_adam/widgets/labeled_iconbutton/labeled_iconbutton.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/widgets/text_field_widget/text_field_widget.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';

import '../../utils/assets_gen/assets.gen.dart';

class OrderSupportScreen extends StatelessWidget {

  String issueTitle = Get.arguments;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: TextWidget(text: AppStrings.orderSupport.tr),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_new_rounded),
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Align(
            alignment: AlignmentGeometry.centerLeft,
            child: TextWidget(text: issueTitle,
            fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBoxWidget(height: 10,),
          TextFieldWidget(
              hint: AppStrings.describeTheIssue.tr,
              controller: controller,
            borderRadius: 10,
            borderColor: AppColors.brandColor,
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
                    fontColor: AppColors.brandColor,
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
                child: ButtonWidget(
                    label: AppStrings.submit.tr,
                  buttonHeight: 40,
                  fontSize: 14,
                  backgroundColor: AppColors.brandColor,
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
