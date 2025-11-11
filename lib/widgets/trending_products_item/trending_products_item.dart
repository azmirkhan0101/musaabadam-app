import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';

import '../../utils/assets_gen/assets.gen.dart';
import '../text_widget/text_widgets.dart';

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
            child: TextWidget(
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
            child: TextWidget(
              text: "\$400",
              textAlignment: TextAlign.left,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w600,
              fontColor: AppColors.brandColor,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
