import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/screens/livestream_screens/livestream_screen/controller/livestream_screen_controller.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/custom_button.dart';
import 'package:musaab_adam/widgets/image_widget/image_widget.dart';
import 'package:musaab_adam/widgets/labeled_iconbutton/labeled_iconbutton.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';

import '../../../core/assets_gen/assets.gen.dart';

class LivestreamScreen extends StatelessWidget {

  final LiveStreamScreenController controller = Get.find<LiveStreamScreenController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //=================STACK=====================//
        child: Stack(
          children: [
            //=================AVATAR=====================//
            Image.asset(Assets.dummy.livestreamAvatar.keyName,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            //=================STACKED ITEMS COLUMN=====================//
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                //=================CUSTOM APP BAR=====================//
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){},
                        icon: Icon(Icons.arrow_back_ios_new_rounded)
                    ),
                    CustomText(text: "Emma Watson",
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )
                  ],
                ),
                //=================FOLLOW SECTION=====================//
                followButtonRow(),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      //=================VERTICAL BUTTONS=====================//
                      verticalButtonsColumn(),
                      //=================COMMENT TYPING SECTION=====================//
                      commentTypingRow(),
                      SizedBoxWidget(height: 8,),
                      //=================LIVE PRODUCT SECTION=====================//
                      liveProductItem(),
                      SizedBoxWidget(height: 8,),
                      //=================CUSTOM AND BID BUTTONS=====================//
                      customAndBidButtons(),
                      SizedBoxWidget(height: 10,)
                    ],
                  ),
                )
              ],
            ),
          ],
        )
      ),
    );
  }

  //FOLLOW BUTTON ROW
  followButtonRow(){
    return Padding(
      padding: EdgeInsets.only( left: 20.w),
      child: Row(
        children: [
          SvgPicture.asset(
              Assets.icons.liveIcon
          ),
          SizedBoxWidget(width: 10,),
          Icon(Icons.remove_red_eye, color: AppColors.primaryColor,),
          SizedBoxWidget(width: 5,),
          CustomText(text: "5.2k",
            fontSize: 14,
            fontColor: AppColors.primaryColor,
          ),
          SizedBoxWidget(width: 10,),
          CustomButton(label: AppStrings.follow.tr,
            backgroundColor: AppColors.primaryColor,
            buttonHeight: 40,
            buttonWidth: 85,
            fontSize: 14,
          ),
          Expanded(
            child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(onPressed: (){}, icon: Icon(Icons.fullscreen))
            ),
          )
        ],
      ),
    );
  }

  //VERTICAL BUTTONS
  verticalButtonsColumn(){
    return Align(
      alignment: AlignmentGeometry.centerRight,
      child: Padding(
        padding: EdgeInsets.only( right: 15.w ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LabeledIconButton(
              iconPath: Assets.icons.more,
              text: AppStrings.more.tr,
              fontColor: AppColors.primaryColor,
            ),
            SizedBoxWidget( height: 5,),
            LabeledIconButton(
              iconPath: Assets.icons.boost,
              text: AppStrings.boost.tr,
              fontColor: AppColors.primaryColor,
            ),
            SizedBoxWidget( height: 5,),
            LabeledIconButton(
              iconPath: Assets.icons.clip,
              text: AppStrings.clip.tr,
              fontColor: AppColors.primaryColor,
            ),
            SizedBoxWidget( height: 5,),
            LabeledIconButton(
              iconPath: Assets.icons.share,
              text: AppStrings.share.tr,
              fontColor: AppColors.primaryColor,
            ),
            SizedBoxWidget( height: 5,),
            LabeledIconButton(
              iconPath: Assets.icons.wallet,
              text: AppStrings.wallet.tr,
              fontColor: AppColors.primaryColor,
            ),
            SizedBoxWidget( height: 5,),
            LabeledIconButton(
              iconPath: Assets.icons.shop,
              text: AppStrings.shop,
              fontColor: AppColors.primaryColor,
            ),
          ],
        ),
      ),
    );
  }

  //COMMENT TYPING ROW
commentTypingRow(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBoxWidget(width: 15,),
        Expanded(
          child: SearchBar(
            padding: WidgetStateProperty.all(EdgeInsets.symmetric(horizontal: 10)),
            hintText: AppStrings.typeComment.tr,
            hintStyle: WidgetStateProperty.all(TextStyle(color: AppColors.black50Percent)),
            backgroundColor: WidgetStateProperty.all(Colors.transparent),
            elevation: WidgetStateProperty.all(0),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.w),
                side: BorderSide(color: Colors.blue, width: 1.w),
              ),
            ),
          ),
        ),
        SizedBoxWidget( width: 10,),
        Center(
          child: LabeledIconButton(
            iconPath: Assets.icons.send,
            color: AppColors.white,
            borderColor: AppColors.primaryColor,
            borderWidth: 2,
            text: "",
            fontColor: AppColors.primaryColor,
            gap: 0,
          ),
        ),
        SizedBoxWidget( width: 20,),
      ],
    );
}

//LIVE PRODUCT ITEM
liveProductItem(){
    return ListTile(
      leading: ImageWidget(width: 50, height: 50, imagePath: Assets.dummy.liveItem.keyName),
      title: CustomText(
          text: "Nike Air Shoes",
        fontWeight: FontWeight.w700,
        fontSize: 16,
        textAlignment: TextAlign.start,
      ),
      subtitle: Row(
        children: [
          CustomText( text: "${AppStrings.size.tr}: 34-44",
            fontSize: 12,
          ),
          SizedBoxWidget(width: 10,),
          CircleAvatar(
            backgroundColor: AppColors.orange,
            radius: 4.r,
          ),
          CustomText(
            text: " ${AppStrings.newe.tr}",
            fontSize: 12,
          ),
          SizedBoxWidget(width: 10,),
          CircleAvatar(
            backgroundColor: AppColors.primaryColor,
            radius: 4.r,
          ),
          CustomText(
            text: " 1 ${AppStrings.available.tr}",
            fontSize: 12,
          ),
          SizedBoxWidget(width: 10,),
          CustomText(
            text: "\$4.43",
            fontSize: 12,
            fontWeight: FontWeight.w700,
          )
        ],
      ),
    );
}

//CUSTOM AND BID BUTTONS
customAndBidButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBoxWidget(width: 15,),
        Expanded(child: CustomButton(
          label: AppStrings.custom.tr,
          buttonRadius: 8,
          backgroundColor: AppColors.white,
          textColor: AppColors.primaryColor,
          borderColor: AppColors.primaryColor,
          borderWidth: 2,
          buttonHeight: 42,
        )
        ),
        SizedBoxWidget(width: 10,),
        Expanded(child: CustomButton(
          label: AppStrings.bid.tr,
          backgroundColor: AppColors.orange,
          buttonRadius: 8,
          buttonHeight: 42,
        )
        ),
        SizedBoxWidget(width: 15,),
      ],
    );
}
}
