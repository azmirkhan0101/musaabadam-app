import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';
import 'package:musaab_adam/utils/app_strings/app_strings.dart';
import 'package:musaab_adam/widgets/button_widget/button_widget.dart';
import 'package:musaab_adam/widgets/image_widget/image_widget.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';

import '../../utils/assets_gen/assets.gen.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget(
                            text: "Oops!",
                          fontSize: 30,
                        ),
                        TextWidget(
                          text: AppStrings.thePageYouWereLookingFor.tr,
                          fontSize: 14,
                        ),
                        ImageWidget(width: 324, height: 242, imagePath: Assets.images.error.keyName)
                      ],
                    ),
                  )
              ),
              Padding(
                padding: EdgeInsets.symmetric( horizontal: 25.w ),
                child: ButtonWidget(label: AppStrings.goBack.tr,
                buttonHeight: 45,
                  buttonWidth: double.infinity,
                  backgroundColor: AppColors.brandColor,
                  buttonRadius: 8,
                ),
              ),
              SizedBoxWidget(height: 20,)
            ],
          )
      ),
    );
  }
}
