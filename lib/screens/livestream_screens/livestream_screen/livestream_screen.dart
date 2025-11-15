import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';
import 'package:musaab_adam/utils/app_strings/app_strings.dart';
import 'package:musaab_adam/widgets/button_widget/button_widget.dart';
import 'package:musaab_adam/widgets/labeled_iconbutton/labeled_iconbutton.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';

import '../../../utils/assets_gen/assets.gen.dart';

class LivestreamScreen extends StatelessWidget {
  const LivestreamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(Assets.dummy.livestream.keyName,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){},
                        icon: Icon(Icons.arrow_back_ios_new_rounded)
                    ),
                    TextWidget(text: "Emma Watson",
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only( left: 20.w),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                          Assets.icons.liveIcon
                      ),
                      SizedBoxWidget(width: 10,),
                      Icon(Icons.remove_red_eye, color: AppColors.brandColor,),
                      SizedBoxWidget(width: 5,),
                      TextWidget(text: "5.2k",
                        fontSize: 14,
                        fontColor: AppColors.brandColor,
                      ),
                      SizedBoxWidget(width: 10,),
                      ButtonWidget(label: AppStrings.follow.tr,
                        backgroundColor: AppColors.brandColor,
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
                ),
                LabeledIconButton(
                  iconPath: Assets.icons.share,
                  iconWidth: 20,
                  iconHeight: 20,
                  text: "hello",
                  fontColor: AppColors.brandColor,
                ),
                LabeledIconButton(
                  iconPath: Assets.icons.share,
                  iconWidth: 20,
                  iconHeight: 20,
                  text: "hello",
                  fontColor: AppColors.brandColor,
                ),
                LabeledIconButton(
                  iconPath: Assets.icons.share,
                  iconWidth: 20,
                  iconHeight: 20,
                  text: "hello",
                  fontColor: AppColors.brandColor,
                ),
                LabeledIconButton(
                  iconPath: Assets.icons.share,
                  iconWidth: 20,
                  iconHeight: 20,
                  text: "hello",
                  fontColor: AppColors.brandColor,
                ),
                LabeledIconButton(
                  iconPath: Assets.icons.share,
                  iconWidth: 20,
                  iconHeight: 20,
                  text: "hello",
                  fontColor: AppColors.brandColor,
                ),
                LabeledIconButton(
                  iconPath: Assets.icons.share,
                  iconWidth: 20,
                  iconHeight: 20,
                  text: "hello",
                  fontColor: AppColors.brandColor,
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}
