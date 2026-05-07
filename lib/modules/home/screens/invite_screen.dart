import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/custom_button.dart';
import 'package:musaab_adam/widgets/image_widget/image_widget.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';

import '../../../core/assets_gen/assets.gen.dart';

class InviteScreen extends StatelessWidget {
  const InviteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: IconButton(onPressed: (){
          Get.back();
        },
            icon: Icon(Icons.arrow_back_ios_new_rounded)
        ),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric( horizontal: 20.w ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBoxWidget( height: 30,),
              ImageWidget(width: 183, height: 153, imagePath: Assets.images.giftBox.keyName),
              SizedBoxWidget( height: 30,),
              CustomText(text: AppStrings.shareBidsRush,
              fontSize: 20,
                fontWeight: FontWeight.w700,
                fontColor: AppColors.black,
              ),
              SizedBoxWidget( height: 60,),
              inviteStatsContainer( context ),
              SizedBoxWidget(height: 30,),
              Container(
                width: MediaQuery.of(context).size.width*0.9.w,
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: AppColors.greyD9
                ),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomText(
                          textAlignment: TextAlign.left,
                          translate: false,
                          text: "https://heyguys.com",
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: CustomButton(
                          label: AppStrings.copy.tr,
                          buttonHeight: 40,
                          backgroundColor: AppColors.primaryColor,
                        ),
                      )
                    ],
                  )
              ),
              SizedBoxWidget(height: 10,),
              CustomButton(
                label: AppStrings.share.tr,
                buttonHeight: 40,
                buttonWidth: MediaQuery.of(context).size.width*0.9,
                backgroundColor: AppColors.orange,
              ),
              SizedBoxWidget(height: 10,),
              CustomButton(
                label: AppStrings.inviteContacts.tr,
                buttonHeight: 40,
                buttonWidth: MediaQuery.of(context).size.width*0.9,
                backgroundColor: AppColors.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container inviteStatsContainer(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric( vertical: 20),
      width: MediaQuery.of(context).size.width*0.8,
      decoration: BoxDecoration(
        color: AppColors.lightOrange,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        children: [
          CustomText(text: AppStrings.yourInviteStats,
            fontColor: AppColors.black,
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
          SizedBoxWidget(height: 20,),
          Row(
            children: [
              Expanded(
                child: ListTile(
                  title: CustomText(text: "0"),
                  subtitle: CustomText(text: AppStrings.credit,
                  fontSize: 14,
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: CustomText(text: "0"),
                  subtitle: CustomText(text: AppStrings.complete,
                  fontSize: 14,
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: CustomText(text: "0"),
                  subtitle: CustomText(text: AppStrings.pending,
                  fontSize: 14,
                  ),
                ),
              )
            ],
          ),
          SizedBoxWidget(height: 10,),
          CustomText(text: AppStrings.viewYourReferalHistory,
          fontSize: 13,
            underline: true,
          )
        ],
      ),
    );
  }
}
