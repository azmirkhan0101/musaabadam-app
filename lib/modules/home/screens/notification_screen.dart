import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_constants.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/cached_image_widget.dart';
import 'package:musaab_adam/core/widgets/custom_choice_chip.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';
import 'package:musaab_adam/routes/app_pages.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  RxBool isAllEnabled = false.obs;
  RxBool isBuyerEnabled = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: appBar(),
      body: Column(
        children: [
          IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 12.w,
                  children: [
                    Obx((){
                      return CustomChoiceChip(
                        borderRadius: 20,
                          label: "All Notification",
                          selected: isAllEnabled.value,
                          onSelected: (value){
                            isAllEnabled.value = value;
                          }
                      );
                    }),
                    Obx((){
                      return CustomChoiceChip(
                          borderRadius: 20,
                          label: "Buyer Notification",
                          selected: isBuyerEnabled.value,
                          onSelected: (value){
                            isBuyerEnabled.value = value;
                          }
                      );
                    }),
                    Obx((){
                      return CustomChoiceChip(
                          borderRadius: 20,
                          label: "Seller Notification",
                          selected: !isBuyerEnabled.value,
                          onSelected: (value){
                            isBuyerEnabled.value = !value;
                          }
                      );
                    })
                  ],
                ),
              ),
            ),
          ),
          Expanded(
                  child: ListView.builder(
                    itemCount: 7,
                      itemBuilder: (context,index){
                    return notificationItemWidget();
                  })
          ),
        ],
      ),
    );
  }

  AppBar appBar(){
    return AppBar(
      forceMaterialTransparency: true,
      leading: const BackButton(),
      title: Center(
        child: CustomText(
          textAlignment: TextAlign.center,
          text: AppStrings.notification.tr,
          fontColor: AppColors.black,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),
      actions: [
        IconButton(
            onPressed: (){
              Get.toNamed(AppRoutes.notificationSettingsScreen);
        },
            icon: Icon(Icons.settings_outlined)
        )
      ],
    );
  }

  Container notificationItemWidget(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15),
      padding: EdgeInsets.symmetric(horizontal: 10,),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 2, color: AppColors.antiFlashWhite))
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: AlignmentGeometry.center,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 4,
            ),
          ),
          Expanded(
            child: Align(
              alignment: AlignmentGeometry.centerLeft,
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: CachedImageWidget(
                      width: 35.w,
                      height: 35.h,
                      imageUrl: Dummy.user1
                  ),
                ),
                title: CustomText(
                  text: "Ronaldo liked your post",
                  translate: false,
                  textAlignment: TextAlign.left,
                ),
                subtitle: CustomText(
                  text: "My favourite place",
                  translate: false,
                  textAlignment: TextAlign.left,
                ),
                trailing: CustomText(text: "2h ago"),
              ),
            ),
          )
        ],
      ),
    );
  }

}
