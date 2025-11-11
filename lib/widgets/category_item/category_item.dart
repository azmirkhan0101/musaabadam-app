import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors/app_colors.dart';
import '../image_widget/image_widget.dart';
import '../text_widget/text_widgets.dart';

class CategoryItem extends StatelessWidget {

  final String imagePath;
  final String itemName;
  final double height;
  final double width;
  final double imageWidth;
  final double imageHeight;
  final double marginRight;

  const CategoryItem({
    super.key,
    required this.imagePath,
    required this.itemName,
    this.height = 93,
    this.width = 77,
    this.imageHeight = 65,
    this.imageWidth = 69,
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
          ImageWidget(width:imageWidth.w, height: imageHeight.h, imagePath: imagePath),
          TextWidget(text: itemName,
            fontSize: 12.sp,
            fontColor: AppColors.white,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
