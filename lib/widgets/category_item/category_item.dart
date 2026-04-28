import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaab_adam/core/widgets/cached_image_widget.dart';

import '../../core/utils/app_colors.dart';
import '../image_widget/image_widget.dart';
import '../../core/widgets/custom_text.dart';

class CategoryItem extends StatelessWidget {

  final String image;
  final String itemName;
  final double height;
  final double width;
  final double imageWidth;
  final double imageHeight;
  final double marginRight;

  const CategoryItem({
    super.key,
    required this.image,
    required this.itemName,
    this.height = 100,
    this.width = 80,
    this.imageHeight = 62,
    this.imageWidth = 65,
    this.marginRight = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width.w,
      margin: EdgeInsets.only(right: marginRight.w),
      decoration: BoxDecoration(
          color: AppColors.lightOrange,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CachedImageWidget(
              width:imageWidth.w,
              height: imageHeight.h,
            imageUrl: image
          ),
          Expanded(
            child: CustomText(
              text: itemName,
              fontSize: 12.sp,
              fontColor: AppColors.white,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
