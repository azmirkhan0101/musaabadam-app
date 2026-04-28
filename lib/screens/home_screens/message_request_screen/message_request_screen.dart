import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/routes/app_pages.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';

import 'controller/message_request_controller.dart';

class MessageRequestScreen extends StatelessWidget {

  final MessageRequestController controller = Get.find<MessageRequestController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(),
      body: SizedBox.shrink()
    );
  }

  appBar(){
    return AppBar(
      forceMaterialTransparency: true,
      leading: IconButton(
          onPressed: (){
            Get.toNamed(AppRoutes.mainScreen);
          },
          icon:Icon(Icons.arrow_back_sharp)
      ),
      title: Center(
        child: CustomText(
          textAlignment: TextAlign.center,
          text: AppStrings.messageRequest.tr,
          fontColor: AppColors.black,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),
    );
  }
}
