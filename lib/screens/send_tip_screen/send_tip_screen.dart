import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';
import 'package:musaab_adam/widgets/labeled_iconbutton/labeled_iconbutton.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';

import '../../utils/app_strings/app_strings.dart';
import '../../utils/assets_gen/assets.gen.dart';
import '../../widgets/button_widget/button_widget.dart';
import '../../widgets/text_widget/text_widgets.dart';

class SendTipScreen extends StatelessWidget {
  const SendTipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: Icon(Icons.close),
        title: TextWidget(text: AppStrings.sendATip.tr),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBoxWidget(height: 20,),
            Align(
                alignment: AlignmentGeometry.center,
                child: SvgPicture.asset(Assets.icons.sendATipBig)
            ),
            SizedBoxWidget(height: 10,),
            tipAmountSelection()
          ],
        ),
      ),
    );
  }

  //TIP AMOUNT SELECTION - THIS SECTION COMES FIRST
tipAmountSelection(){
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(text: AppStrings.chooseATipAmount.tr),
          SizedBoxWidget(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LabeledIconButton(
                iconPath: Assets.icons.tip1,
                text: "\$1",
                iconHeight: 45,
                iconWidth: 45,
                isLabelInside: true,
                borderRadius: 8,
                color: AppColors.brandColorShade,
                padding: [20, 10],
              ),
              LabeledIconButton(
                iconPath: Assets.icons.tip5,
                text: "\$5",
                iconHeight: 45,
                iconWidth: 45,
                isLabelInside: true,
                borderRadius: 8,
                color: AppColors.brandColorShade,
                padding: [20, 10],
              ),
              LabeledIconButton(
                iconPath: Assets.icons.tip10,
                text: "\$10",
                iconHeight: 45,
                iconWidth: 45,
                isLabelInside: true,
                borderRadius: 8,
                color: AppColors.brandColorShade,
                padding: [20, 10],
              )
            ],
          ),
          SizedBoxWidget(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LabeledIconButton(
                iconPath: Assets.icons.tip20,
                text: "\$20",
                iconHeight: 45,
                iconWidth: 45,
                isLabelInside: true,
                borderRadius: 8,
                color: AppColors.brandColorShade,
                padding: [20, 10],
              ),
              LabeledIconButton(
                iconPath: Assets.icons.tip50,
                text: "\$50",
                iconHeight: 45,
                iconWidth: 45,
                isLabelInside: true,
                borderRadius: 8,
                color: AppColors.brandColorShade,
                padding: [20, 10],
              ),
              LabeledIconButton(
                iconPath: Assets.icons.tip100,
                text: "\$100",
                iconHeight: 45,
                iconWidth: 45,
                isLabelInside: true,
                borderRadius: 8,
                color: AppColors.brandColorShade,
                padding: [20, 10],
              )
            ],
          ),
          SizedBoxWidget(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(text: AppStrings.addAThankYouNote.tr),
              Switch(
                value: false,
                onChanged: (v) {},
                activeColor: Colors.white,
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: Color(0xFFCCCCCC),
                trackOutlineColor: WidgetStateProperty.all(
                    AppColors.greyA8
                ),
                trackOutlineWidth: WidgetStateProperty.all(2),
                activeTrackColor: Colors.blue,
              ),
            ],
          ),
          TextWidget(
            text: AppStrings.thisMessageInChat.tr,
            fontSize: 12,
            fontColor: AppColors.grey8C,
          ),
          SizedBoxWidget(height: 30,),
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
                        label: AppStrings.next.tr,
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
    );
}

//TIP SENDING SECTION
tipSendingSection(){
    return Expanded(
      child: Column(
        children: [
          SizedBoxWidget(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(text: AppStrings.tipAmount.tr,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              TextWidget(text: "\$10",
                fontSize: 16,
                fontWeight: FontWeight.w700,
              )
            ],
          ),
          SizedBoxWidget(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(text: AppStrings.payment.tr,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              TextWidget(text: "\$10",
                fontSize: 16,
                fontWeight: FontWeight.w700,
              )
            ],
          ),
          SizedBoxWidget(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(text: AppStrings.subtotal.tr,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              TextWidget(text: "\$10",
                fontSize: 16,
                fontWeight: FontWeight.w700,
              )
            ],
          ),
          SizedBoxWidget(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(text: AppStrings.paymentProcessingFee.tr,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              TextWidget(text: "\$10",
                fontSize: 16,
                fontWeight: FontWeight.w700,
              )
            ],
          ),
          SizedBoxWidget(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(
                  text: AppStrings.total.tr,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              TextWidget(text: "\$10",
                fontSize: 16,
                fontWeight: FontWeight.w700,
              )
            ],
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
                        label: AppStrings.sendTip.tr,
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
    );
}
}
