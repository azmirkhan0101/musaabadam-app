import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';

import '../../utils/assets_gen/assets.gen.dart';

class LivestreamGridItem extends StatelessWidget {

  final VoidCallback? onTap;
  const LivestreamGridItem({
    super.key,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBoxWidget(
        height: 113.h,
        width: 163.w,
        child: Stack(
          children: [
           ClipRRect(
             borderRadius: BorderRadius.circular(10.w),
             child: Image.asset(
                 height: 113.h,
                 width: 163.w,
                 fit: BoxFit.cover,
                 Assets.dummy.livestreamPreview2.keyName
             ),
           ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextWidget(text: "Azmir Khan",
                      textAlignment: TextAlign.left,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w600,
                        fontColor: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    Expanded(child: SvgPicture.asset(Assets.icons.liveIcon))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
