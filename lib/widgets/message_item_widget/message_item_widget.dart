import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';
import 'package:musaab_adam/widgets/image_widget/image_widget.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';

import '../../utils/assets_gen/assets.gen.dart';

class MessageItemWidget extends StatelessWidget {
  const MessageItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10, top: 10, bottom: 10),
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      height: 90.h,
      decoration: BoxDecoration(
        color: AppColors.brandColorShade,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        children: [
          Expanded(
            child: ListTile(
              leading: ImageWidget(
                  width: 30,
                  height: 30,
                  imagePath: Assets.images.userPhoto.keyName
              ),
              title: TextWidget(
                  text: "Hazrat Ali",
                fontSize: 16,
                fontWeight: FontWeight.w600,
                textAlignment: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              subtitle: TextWidget(
                  text: "Please send us carefully",
                fontSize: 14,
                textAlignment: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundColor: AppColors.orange,
                radius: 6,
              ),
              TextWidget(text: "Today",
              fontSize: 12,
              )
            ],
          )
        ],
      ),
    );
  }
}
