import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/routes/app_pages/app_pages.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';
import 'package:musaab_adam/utils/app_strings/app_strings.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';

import 'controller/archive_screen_controller.dart';

class ArchiveScreen extends StatelessWidget {

  final ArchiveScreenController controller = Get.find<ArchiveScreenController>();

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
            Get.toNamed(AppRoutes.MAIN_SCREEN);
          },
          icon:Icon(Icons.arrow_back_sharp)
      ),
      title: Center(
        child: TextWidget(
          textAlignment: TextAlign.center,
          text: AppStrings.archive.tr,
          fontColor: AppColors.black,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),
    );
  }
}
