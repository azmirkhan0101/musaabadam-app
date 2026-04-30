import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/widgets/cached_image_widget.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';

class InboxItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String lastMessage;
  final String time;
  final String unreadCount;
  final VoidCallback? onTap;

  const InboxItem({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.unreadCount,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        height: 90.h,
        decoration: BoxDecoration(
          color: AppColors.brandColorShade,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: CachedImageWidget(
                    width: 30, // You might want to use .w here if using screenutil
                    height: 30,
                    imageUrl: imageUrl,
                  ),
                ),
                title: CustomText(
                  text: name,
                  translate: false,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  textAlignment: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                subtitle: CustomText(
                  text: lastMessage,
                  translate: false,
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
                // Only show badge if there is an unread count
                if (unreadCount != "0" && unreadCount.isNotEmpty)
                  CircleAvatar(
                    backgroundColor: AppColors.orange,
                    radius: 10,
                    child: CustomText(
                      translate: false,
                      text: unreadCount,
                      fontColor: Colors.white,
                      fontSize: 12,
                    ),
                  )
                else
                  const SizedBox(),
                CustomText(
                  translate: false,
                  text: time,
                  fontSize: 12,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}