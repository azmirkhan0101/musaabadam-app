import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/routes/app_pages.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/custom_choice_chip.dart';
import 'package:musaab_adam/modules/home/components/inbox_item.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';

import '../../../core/utils/app_constants.dart';

class InboxScreen extends StatelessWidget {

  RxBool purchaseSelected = false.obs;
  RxBool unreadSelected = false.obs;
  RxString selectedSort = 'Newest'.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: appBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Row(
              children: [
               Obx((){
                 return sortDropdown(
                     currentValue: selectedSort.value,
                     onChanged: (value){
                       if( value == null ) return;
                       selectedSort.value = value;
                     }
                 );
               }),
                SizedBoxWidget(width: 10,),
                Obx((){
                  return CustomChoiceChip(
                      label: AppStrings.purchases.tr,
                      selected: purchaseSelected.value,
                      borderRadius: 8,
                      borderWidth: 1,
                      borderColor: AppColors.primaryColor,
                      onSelected: (isSelected){
                        purchaseSelected.value = isSelected;
                      }
                  );
                }),
                SizedBoxWidget(width: 10,),
                Obx((){
                  return CustomChoiceChip(
                      label: AppStrings.unread.tr,
                      selected: unreadSelected.value,
                      borderRadius: 8,
                      borderWidth: 1,
                      borderColor: AppColors.primaryColor,
                      onSelected: (isSelected){
                        unreadSelected.value = isSelected;
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
          )
        ],
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(100)
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.edit, color: AppColors.backgroundColor,),
            SizedBoxWidget(width: 5,),
            CustomText(text: AppStrings.compose.tr,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontColor: AppColors.backgroundColor,
            )
          ],
        ),
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
          text: AppStrings.inbox.tr,
          fontColor: AppColors.black,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),
      actions: [
        IconButton(onPressed: (){
          menuAlertDialog();
        },
            icon: Icon(Icons.menu)
        )
      ],
    );
  }

  //MENU ALERT DIALOG
void menuAlertDialog(){
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
            title: CustomText(text: AppStrings.messageRequest.tr,
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
            onTap: (){
              Get.offAndToNamed(AppRoutes.messageRequestScreen);
            },
          ),
          ListTile(
            leading: Icon(Icons.archive),
            title: CustomText(text: AppStrings.archive.tr,
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
            onTap: (){
              Get.offAndToNamed(AppRoutes.archiveScreen);
            },
          )
        ],
      ),
    ),
  );
}

  Widget sortDropdown({
    required String currentValue,
    required Function(String?) onChanged,
  }) {
    const Color lightBlueBackground = Color(0xFFE1F0F6);

    return Container(
      height: 32.h,
      padding: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: lightBlueBackground,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.primaryColor, width: 1),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          dropdownColor: AppColors.backgroundColor,
          value: currentValue,
          icon: const Icon(Icons.keyboard_arrow_down, color: AppColors.primaryColor, size: 20),
          style: const TextStyle(
            color: AppColors.primaryColor,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          onChanged: onChanged,
          items: <String>['Newest', 'Oldest']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
