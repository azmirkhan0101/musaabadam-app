import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors/app_colors.dart';
import '../image_widget/image_widget.dart';
import '../text_widget/text_widgets.dart';

class CategoryItem extends StatelessWidget {

  final String imagePath;
  final String itemName;

  const CategoryItem({
    super.key,
    required this.imagePath,
    required this.itemName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 93.h,
      width: 77.w,
      margin: EdgeInsets.only(right: 10.w),
      decoration: BoxDecoration(
          color: AppColors.lightOrange,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ImageWidget(width: 69, height: 65, imagePath: imagePath),
          TextWidget(text: itemName,
            fontSize: 15,
            fontColor: AppColors.white,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
