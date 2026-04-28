import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';

import '../../core/assets_gen/assets.gen.dart';
import '../../core/widgets/custom_text.dart';

class TrendingProductsItem extends StatelessWidget {
  const TrendingProductsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 100.w,
      margin: EdgeInsets.only(right: 6.w),
      decoration: BoxDecoration(
        color: AppColors.offWhite,
        borderRadius: BorderRadius.circular(10.w)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.w),
              topRight: Radius.circular(10.w),
            ),
            child: Image.asset(
              height: 76.h,
              width: 100.w,
              fit: BoxFit.cover,
              Assets.dummy.livestreamPreview2.keyName,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: CustomText(
              text: "Bags",
              textAlignment: TextAlign.left,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w600,
              fontColor: AppColors.black,
              fontSize: 14,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: CustomText(
              text: "\$400",
              textAlignment: TextAlign.left,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w600,
              fontColor: AppColors.primaryColor,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
