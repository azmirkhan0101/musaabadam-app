import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/routes/app_pages.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';

import '../../../core/utils/app_constants.dart';
import '../components/inbox_item.dart';

class MessageRequestScreen extends StatelessWidget {
  const MessageRequestScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: appBar(),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context,index){
            return InboxItem(
              imageUrl: Dummy.user1,
              name: "Hazrat Ali",
              lastMessage: "Please send us carefully",
              time: "Today",
              unreadCount: "2",
              onTap: () {
                Get.toNamed(AppRoutes.messageScreen);
              },
            );
          })
    );
  }

  AppBar appBar(){
    return AppBar(
      forceMaterialTransparency: true,
      leading: const BackButton(),
      centerTitle: true,
      title: CustomText(
        text: AppStrings.messageRequest.tr,
        fontColor: AppColors.black,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
    );
  }
}
