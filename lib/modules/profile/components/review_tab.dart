import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_constants.dart';
import '../../../core/widgets/cached_image_widget.dart';
import '../../../core/widgets/custom_text.dart';

class ReviewTab extends StatelessWidget {
  const ReviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        reviewItem(),
        reviewItem(),
        reviewItem(),
        reviewItem(),
      ],
    );
  }


  //REVIEWS ITEM
  ListTile reviewItem() {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: CachedImageWidget(
          imageUrl: Dummy.user1,
          shape: BoxShape.circle,
        ),
      ),
      title: CustomText(text: "Isabella Silveria",
        maxLines: 1,
        fontWeight: FontWeight.w700,
        textAlignment: TextAlign.start,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: CustomText(text: "Desenvolvedora",
        fontSize: 14,
        fontColor: AppColors.black50Percent,
        textAlignment: TextAlign.start,
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star, color: Colors.orangeAccent, size: 18,),
          Icon(Icons.star, color: Colors.orangeAccent, size: 18,),
          Icon(Icons.star, color: Colors.orangeAccent, size: 18,),
          Icon(Icons.star, color: Colors.orangeAccent, size: 18,),
          Icon(Icons.star, color: Colors.orangeAccent, size: 18,),
        ],
      ),
    );
  }
}
