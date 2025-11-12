import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/screens/bottom_nav_screens/categories_screen/controller/categories_screen_controller.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';
import 'package:musaab_adam/utils/app_strings/app_strings.dart';
import 'package:musaab_adam/utils/assets_gen/fonts.gen.dart';
import 'package:musaab_adam/widgets/category_item/category_item.dart';
import 'package:musaab_adam/widgets/choice_chip_widget/choice_chip_widget.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';

import '../../../utils/assets_gen/assets.gen.dart';

class CategoriesScreen extends StatelessWidget {

  final CategoriesScreenController controller = Get.find<CategoriesScreenController>();

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
                    return ChoiceChipWidget(
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
                    return ChoiceChipWidget(
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
                    return ChoiceChipWidget(
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

  gridViewBuilder(){
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
              imagePath: Assets.images.watch.keyName,
              itemName: AppStrings.watch
          );
        });
  }

  appBar(){
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