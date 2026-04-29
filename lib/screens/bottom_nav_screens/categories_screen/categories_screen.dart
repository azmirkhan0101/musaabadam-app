import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/screens/bottom_nav_screens/categories_screen/controller/categories_screen_controller.dart';
import 'package:musaab_adam/core/components/category_item.dart';
import 'package:musaab_adam/widgets/choice_chip_widget/custom_choice_chip.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';

import '../../../core/assets_gen/fonts.gen.dart';


class CategoriesScreen extends StatelessWidget {

  final CategoriesScreenController controller = Get.find<CategoriesScreenController>();

  CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //===================RECOMMENDED=======================//
                  Obx((){
                    return CustomChoiceChip(
                        label: AppStrings.recommended.tr,
                        selected: controller.recommendedChipSelected.value,
                        colorChangeable: true,
                        borderRadius: 20,
                        borderColor: Colors.transparent,
                        onSelected: (isSelected){
                          controller.recommendedChipSelected.value = isSelected;
                        }
                    );
                  }),
                  SizedBoxWidget(width: 10,),
                  //===================POPULAR=======================//
                  Obx((){
                    return CustomChoiceChip(
                        label: AppStrings.popular.tr,
                        selected: controller.popularChipSelected.value,
                        colorChangeable: true,
                        borderColor: Colors.transparent,
                        borderRadius: 20,
                        onSelected: (isSelected){
                          controller.popularChipSelected.value = isSelected;
                        }
                    );
                  }),
                  SizedBoxWidget(width: 10,),
                  //===================A-Z=======================//
                  Obx((){
                    return CustomChoiceChip(
                        label: AppStrings.az,
                        selected: controller.azChipSelected.value,
                        colorChangeable: true,
                        borderRadius: 20,
                        onSelected: (isSelected){
                          controller.azChipSelected.value = isSelected;
                        }
                    );
                  }),
                ],
              ),
            ),
            Expanded(child: gridViewBuilder())
          ],
        )
      )
    );
  }

  GridView gridViewBuilder(){
    return GridView.builder(
        padding: EdgeInsets.only(left: 8.w, right: 8.w, top: 10.h),
        shrinkWrap: true,
        itemCount: 40,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.8,
            crossAxisCount: 4,
            mainAxisSpacing: 10.h,
            crossAxisSpacing: 5
        ),
        itemBuilder: (context, index){
          return CategoryItem(
              marginRight: 0,
              image: "",
              itemName: "Watch"
          );
        });
  }

  AppBar appBar(){
    return AppBar(
      forceMaterialTransparency: true,
      title: SearchBar(
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(horizontal: 10)),
        hintText: AppStrings.searchOrders.tr,
        backgroundColor: WidgetStateProperty.all(Colors.transparent),
        elevation: WidgetStateProperty.all(0),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.w),
            side: BorderSide(color: Colors.blue, width: 1.w),
          ),
        ),
        textStyle: WidgetStateProperty.all(
          TextStyle(
              color: Colors.black,
              fontFamily: FontFamily.openSans,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400
          ),
        ),
        hintStyle: WidgetStateProperty.all(
          TextStyle(
              color: Colors.black,
              fontFamily: FontFamily.openSans,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400
          ),
        ),
        trailing: [
          Icon(Icons.search, color: Colors.blue),
        ],
      ),
    );
  }
}