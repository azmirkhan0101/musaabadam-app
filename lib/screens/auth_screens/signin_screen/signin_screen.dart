import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/utils/app_strings/app_strings.dart';
import 'package:musaab_adam/utils/size_config/size_config.dart';
import 'package:musaab_adam/widgets/image_widget/image_widget.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';

import '../../../utils/app_colors/app_colors.dart';
import '../../../utils/assets_gen/assets.gen.dart';
import 'controllers/signin_controller.dart';

class SignInScreen extends StatelessWidget {

  /*dart run build_runner build*/

  final SignInController controller = Get.find<SignInController>();

  @override
  Widget build(BuildContext context) {

    SizeConfig.init(context);

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.responsiveWidth(31)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBoxWidget(height: 38,),
                  Align(
                    alignment: Alignment.topCenter,
                    child: ImageWidget(width: 281, height: 269, imagePath: Assets.images.signinOnboarding.keyName
                  )
                  ),
                  SizedBox(height: SizeConfig.responsiveHeight(15),),
                  TextWidget(
                    text: AppStrings.email.tr,
                    fontSize: 18,
                    fontColor: AppColors.black50Percent,
                  ),
                  SizedBox(height: SizeConfig.responsiveHeight(8),),
                  TextField(
                    decoration: InputDecoration(
                      hintText: AppStrings.enterEmail.tr,
                      hintStyle: TextStyle(color: AppColors.black30Percent,  fontSize: 16.sp),
                      contentPadding: EdgeInsets.symmetric( horizontal: 12, vertical: 8),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: SizeConfig.responsiveWidth(1),
                          color: AppColors.orange,
                        )
                      ),
                      focusedBorder: OutlineInputBorder(
                        gapPadding: 1,
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            width: SizeConfig.responsiveWidth(1),
                            color: AppColors.orange,
                          )
                      ),
                    ),
                  ),
                  SizedBoxWidget(height: 16,),
                  TextWidget(
                    text: AppStrings.password.tr,
                    fontSize: 18,
                    fontColor: AppColors.black50Percent,
                  ),
                  SizedBox(height: SizeConfig.responsiveHeight(8),),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixIconConstraints: BoxConstraints(
                        maxHeight: 12.75.h,
                        maxWidth: 38.w,
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 18.w),
                        child: SvgPicture.asset(
                          Assets.icons.eye,
                        ),
                      ),
                      hintText: AppStrings.enterPassword.tr,
                      hintStyle: TextStyle(color: AppColors.black30Percent, fontSize: 16.sp),
                      contentPadding: EdgeInsets.symmetric( horizontal: 12, vertical: 8),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            width: SizeConfig.responsiveWidth(1),
                            color: AppColors.orange,
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          gapPadding: 1,
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
            ),
          )
      ),
    );
  }
}
