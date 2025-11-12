import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';
import 'package:musaab_adam/utils/app_strings/app_strings.dart';
import 'package:musaab_adam/widgets/button_widget/button_widget.dart';
import 'package:musaab_adam/widgets/choice_chip_widget/choice_chip_widget.dart';
import 'package:musaab_adam/widgets/image_widget/image_widget.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';

import '../../../utils/assets_gen/assets.gen.dart';

class InviteScreen extends StatelessWidget {
  const InviteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: Icon(Icons.arrow_back_ios_new_rounded),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageWidget(width: 183, height: 153, imagePath: Assets.images.gift2.keyName),
            SizedBoxWidget( height: 20,),
            TextWidget(text: AppStrings.shareBidsRush.tr,
            fontSize: 20,
              fontWeight: FontWeight.w700,
              fontColor: AppColors.black,
            ),
            inviteStatsContainer( context ),
            SizedBoxWidget(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColors.greyD9
              ),
              child: Row(
                children: [
                  TextWidget(text: "https://blabla.com"),
                  Expanded(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: ButtonWidget(
                          label: "Copy",
                        buttonHeight: 40,
                        buttonWidth: 80,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  inviteStatsContainer(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric( vertical: 20),
      width: MediaQuery.of(context).size.width*0.8,
      decoration: BoxDecoration(
        color: AppColors.lightOrange,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        children: [
          TextWidget(text: AppStrings.yourInviteStats,
            fontColor: AppColors.black,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          SizedBoxWidget(height: 20,),
          Row(
            children: [
              Expanded(
                child: ListTile(
                  title: TextWidget(text: "0"),
                  subtitle: TextWidget(text: AppStrings.credit.tr,
                  fontSize: 14,
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: TextWidget(text: "0"),
                  subtitle: TextWidget(text: AppStrings.complete.tr,
                  fontSize: 14,
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: TextWidget(text: "0"),
                  subtitle: TextWidget(text: AppStrings.pending.tr,
                  fontSize: 14,
                  ),
                ),
              )
            ],
          ),
          SizedBoxWidget(height: 10,),
          TextWidget(text: AppStrings.viewYourReferalHistory.tr,
          fontSize: 13,
            underline: true,
          )
        ],
      ),
    );
  }
}
