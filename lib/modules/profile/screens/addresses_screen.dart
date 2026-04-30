import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';
import 'package:musaab_adam/routes/app_pages.dart';

class AddressesScreen extends StatelessWidget {
  const AddressesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: CustomText(text: AppStrings.addresses.tr),
        centerTitle: true,
        leading: IconButton(onPressed: (){Get.back();} , icon: Icon(Icons.arrow_back_ios_new_rounded)),
        actions: [
          IconButton(onPressed: (){
            Get.toNamed(AppRoutes.addAddressScreen);
          },
              icon: Icon(Icons.add)
          )
        ],
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        spacing: 20.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 15.w,
            children: [
              CustomText(
                  text: AppStrings.defaultShipping.tr,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontColor: AppColors.primaryColor,
              ),
              CustomText(text: AppStrings.returnAddress.tr,
              fontSize: 16,
                fontWeight: FontWeight.w600,
                fontColor: AppColors.orange,
              ),
            ],
          ),
          CustomText(text: AppStrings.pickupAddresses.tr,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          Row(
            spacing: 10.w,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only( top: 15.h ),
                child: Icon(Icons.location_on_outlined),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: "Jolly Grade",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      textAlignment: TextAlign.start,
                    ),
                    CustomText(text: "Excepteur sint occaecat cupidatat non proident, sunt culpa",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontColor: AppColors.grey86,
                      textAlignment: TextAlign.start,
                      maxLines: 3,
                      overflow: TextOverflow.clip,
                    ),
                    CustomText(text: "966+123456789",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontColor: AppColors.greyA8,
                      textAlignment: TextAlign.right,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
      ),
    );
  }
}
