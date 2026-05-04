import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_constants.dart';
import 'package:musaab_adam/core/widgets/cached_image_widget.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/custom_choice_chip.dart';

class ShopTab extends StatelessWidget {
  ShopTab({super.key});

  RxInt shopTabCurrentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBar(
          elevation: WidgetStateProperty.all(0),
          backgroundColor: WidgetStateProperty.all(Colors.transparent),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(width: 2, color: AppColors.primaryColor),
            ),
          ),
          trailing: [Icon(Icons.search, color: AppColors.primaryColor)],
        ),
        const SizedBox(height: 20,),
        Row(
          spacing: 10.w,
          children: [
            Obx((){
              return CustomChoiceChip(
                label: AppStrings.all.tr,
                selected: shopTabCurrentIndex.value == 0 ? true : false,
                colorChangeable: true,
                borderRadius: 100,
                padding: [10, 4],
                showShadow: true,
                onSelected: (isSelected) {
                  shopTabCurrentIndex.value = 0;
                },
              );
            }),
            Obx((){
              return CustomChoiceChip(
                label: AppStrings.active.tr,
                selected: shopTabCurrentIndex.value == 1 ? true : false,
                colorChangeable: true,
                borderRadius: 100,
                padding: [10, 4],
                showShadow: true,
                onSelected: (isSelected) {
                  shopTabCurrentIndex.value = 1;
                },
              );
            }),
            Obx((){
              return CustomChoiceChip(
                label: AppStrings.inactive.tr,
                selected: shopTabCurrentIndex.value == 2 ? true : false,
                colorChangeable: true,
                borderRadius: 100,
                padding: [10, 4],
                showShadow: true,
                onSelected: (isSelected) {
                  shopTabCurrentIndex.value = 2;
                },
              );
            }),
            Obx((){
              return CustomChoiceChip(
                label: AppStrings.sold.tr,
                selected: shopTabCurrentIndex.value == 3 ? true : false,
                colorChangeable: true,
                borderRadius: 100,
                padding: [10, 4],
                showShadow: true,
                onSelected: (isSelected) {
                  shopTabCurrentIndex.value = 3;
                },
              );
            }),
          ],
        ),
        const SizedBox(height: 20,),
        Obx((){
          return IndexedStack(
            index: shopTabCurrentIndex.value,
            children: [
              shopProduct(),
              shopProduct(),
              shopProduct(),
              shopProduct()
            ],
          );
        }),
      ],
    );
  }

  Row shopProduct(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        CachedImageWidget(
            imageUrl: Dummy.product1,
          borderRadius: 20,
          height: 100.h,
          width: 100.w,
        ),
        Column(
          children: [
            CustomText(
                text: "Hand Bag",
              translate: false,
            ),
            CustomText(
              text: "One Size",
              translate: false,
            )
          ],
        )
      ],
    );
  }
}
