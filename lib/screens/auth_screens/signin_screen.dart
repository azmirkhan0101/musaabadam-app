import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/constants/app_images.dart';
import 'package:musaab_adam/screens/auth_screens/controllers/signin_controller.dart';
import 'package:musaab_adam/utils/size_config/size_config.dart';
import 'package:musaab_adam/widgets/image_widget/image_widget.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';

import '../../constants/app_colors.dart';

class SignInScreen extends StatelessWidget {
  final SignInController controller = Get.find<SignInController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.responsiveWidth(31)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox( height: SizeConfig.responsiveHeight(38),),
                Align(
                  alignment: Alignment.topCenter,
                  child: ImageWidget(
                      width: 240,
                      height: 235,
                      imagePath: AppImages.SIGNIN_ONBOARDING),
                ),
                SizedBox(height: SizeConfig.responsiveHeight(15),),
                TextWidget(
                  text: "Email",
                  responsiveFontSize: 18,
                  fontColor: AppColors.black50Percent,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter email",
                    hintStyle: TextStyle(color: AppColors.black30Percent),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: SizeConfig.responsiveWidth(1),
                        color: AppColors.orange,
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: SizeConfig.responsiveWidth(1),
                          color: AppColors.orange,
                        )
                    ),
                  ),
                )
              ],

            ),
          )
      ),
    );
  }
}
