import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/custom_choice_chip.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';

class UserReportsScreen extends StatelessWidget {
  UserReportsScreen({super.key});

  RxBool isAllSelected = true.obs;
  RxBool isSubmittedSelected = true.obs;
  RxBool isClosedSelected = true.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(text: AppStrings.userReports, fontWeight: FontWeight.w700, fontSize: 18,),
      ),
      body: Column(
        children: [
          Row(
            spacing: 15,
            children: [
              Obx((){
                return CustomChoiceChip(
                  label: AppStrings.all,
                  selected: isAllSelected.value,
                  borderRadius: 50,
                  onSelected: (bool p1) {
                    isAllSelected.value = !isAllSelected.value;
                  },
                );
              }),
              Obx((){
                return CustomChoiceChip(
                  label: AppStrings.submitted,
                  selected: isSubmittedSelected.value,
                  borderRadius: 50,
                  onSelected: (bool p1) {
                    isSubmittedSelected.value = !isSubmittedSelected.value;
                  },
                );
              }),
              Obx((){
                return CustomChoiceChip(
                  label: AppStrings.closed,
                  selected: isClosedSelected.value,
                  borderRadius: 50,
                  onSelected: (bool p1) {
                    isClosedSelected.value = !isClosedSelected.value;
                  },
                );
              })
            ],
          )
        ],
      ),
    );
  }
}
