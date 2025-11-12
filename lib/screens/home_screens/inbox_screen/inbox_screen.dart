import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/routes/app_pages/app_pages.dart';
import 'package:musaab_adam/screens/home_screens/inbox_screen/controller/inbox_screen_controller.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';
import 'package:musaab_adam/utils/app_strings/app_strings.dart';
import 'package:musaab_adam/widgets/choice_chip_widget/choice_chip_widget.dart';
import 'package:musaab_adam/widgets/message_item_widget/message_item_widget.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';

class InboxScreen extends StatelessWidget {

  final InboxScreenController controller = Get.find<InboxScreenController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Row(
              children: [
                Obx((){
                  return ChoiceChipWidget(
                      label: AppStrings.newest.tr,
                      selected: controller.isSelected.value,
                      borderRadius: 8,
                      borderWidth: 1,
                      borderColor: AppColors.brandColor,
                      trailing: Icon(Icons.keyboard_arrow_down_rounded, color: AppColors.brandColor,),
                      onSelected: (isSelected){

                      }
                  );
                }),
                SizedBoxWidget(width: 10,),
                Obx((){
                  return ChoiceChipWidget(
                      label: AppStrings.purchases.tr,
                      selected: controller.isSelected.value,
                      borderRadius: 8,
                      borderWidth: 1,
                      borderColor: AppColors.brandColor,
                      onSelected: (isSelected){

                      }
                  );
                }),
                SizedBoxWidget(width: 10,),
                Obx((){
                  return ChoiceChipWidget(
                      label: AppStrings.unread.tr,
                      selected: controller.isSelected.value,
                      borderRadius: 8,
                      borderWidth: 1,
                      borderColor: AppColors.brandColor,
                      onSelected: (isSelected){

                      }
                  );
                })
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                itemCount: 7,
                  itemBuilder: (context,index){
                return MessageItemWidget();
              })
          )
        ],
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: AppColors.brandColor,
          borderRadius: BorderRadius.circular(100)
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.edit, color: AppColors.white,),
            SizedBoxWidget(width: 5,),
            TextWidget(text: AppStrings.compose.tr,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontColor: AppColors.white,
            )
          ],
        ),
      ),
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
          text: AppStrings.inbox.tr,
          fontColor: AppColors.black,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),
      actions: [
        IconButton(onPressed: (){
          showAlertDialog();
        },
            icon: Icon(Icons.menu)
        )
      ],
    );
  }

  //MENU ALERT DIALOG
showAlertDialog(){
  Get.dialog(
    Dialog(
      backgroundColor: AppColors.brandColorShade,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: AppColors.orange,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Icon(Icons.add_comment_rounded),
            title: TextWidget(text: AppStrings.messageRequest.tr,
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
            onTap: (){
              Get.toNamed(AppRoutes.MESSAGE_REQUEST_SCREEN);
            },
          ),
          ListTile(
            leading: Icon(Icons.archive),
            title: TextWidget(text: AppStrings.archive.tr,
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
            onTap: (){
              Get.toNamed(AppRoutes.ARCHIVE_SCREEN);
            },
          )
        ],
      ),
    ),
  );
}
}
