import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_strings/app_strings.dart';
import '../../../../widgets/sized_box_widget/sized_box_widget.dart';
import '../../../../widgets/text_widget/text_widgets.dart';

AppBar appBar = AppBar(
  centerTitle: true,
  forceMaterialTransparency: true,
  title: TextWidget(text: AppStrings.activity.tr),
  actions: [
    Container(
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: BoxBorder.all(color: AppColors.brandColor, width: 1.w),
      ),
      child: Row(
        children: [
          Icon(Icons.groups_rounded, color: AppColors.brandColor, size: 22.r),
          SizedBoxWidget(width: 5),
          TextWidget(
            text: AppStrings.friends.tr,
            fontColor: AppColors.brandColor,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
    ),
    SizedBoxWidget(width: 10),
  ],
);
