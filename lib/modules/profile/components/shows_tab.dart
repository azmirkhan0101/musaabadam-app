import 'package:flutter/material.dart';
import 'package:musaab_adam/core/utils/app_constants.dart';

import '../../../core/widgets/cached_image_widget.dart';

class ShowsTab extends StatelessWidget {
  const ShowsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 6,
      shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
          childAspectRatio: 9/10,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index){
          return showItem(
              imageUrl: Dummy.live1,
              userName: "Jackob",
              userAvatar: Dummy.user1,
              timeStamp: "Today 8:30 PM"
          );
        }
    );
  }

  Widget showItem({
    required String imageUrl,
    required String userName,
    required String userAvatar,
    required String timeStamp,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 1. User Header
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: CachedImageWidget(
                imageUrl: userAvatar,
                height: 24,
                width: 24,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              userName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
        const SizedBox(height: 8),

        // 2. Main Image with Overlay
        Expanded(
          child: Stack(
            children: [
              // The Main Content Image
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CachedImageWidget(
                    imageUrl: imageUrl,
                  ),
                ),
              ),

              // The Time Badge Overlay
              Positioned(
                top: 12,
                left: 12,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    timeStamp,
                    style: const TextStyle(
                      color: Color(0xFF0084AD), // Matching the blue in your image
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
