import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/cached_image_widget.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';

import '../../../core/utils/app_constants.dart';
import '../components/app_bar.dart';
import '../components/chip_buttons.dart';

class ActivityProductItem {
  final String imageUrl;
  final String? status; // e.g., 'Cancelled', 'Completed'
  final Color? statusColor;
  final String title;
  final String subtitle; // e.g., 'Purchased: 12/12/25' or 'Sold for: £5,000'
  final String sellerName;

  ActivityProductItem({
    required this.imageUrl,
    this.status,
    this.statusColor,
    required this.title,
    required this.subtitle,
    required this.sellerName,
  });
}

class ActivityScreen extends StatelessWidget {

  final List<ActivityProductItem> products = [
    ActivityProductItem(
      imageUrl: Dummy.product1,
      title: 'adg',
      subtitle: 'Purchased: 12/12/25',
      sellerName: 'aum_burgains',
    ),
    ActivityProductItem(
      imageUrl: Dummy.product1,
      status: 'Cancelled',
      statusColor: const Color(0xffFFA0A0), // Light coral/pink
      title: 'Hand Bag',
      subtitle: 'Sold for: £5,000',
      sellerName: 'aum_burgains',
    ),
    ActivityProductItem(
      imageUrl: Dummy.product1,
      status: 'Completed',
      statusColor: const Color(0xFF008BAA), // Teal
      title: 'Hand Bag',
      subtitle: 'Sold for: £5,000',
      sellerName: 'aum_burgains',
    ),
    ActivityProductItem(
      imageUrl: Dummy.product1,
      status: 'Preparing Package',
      statusColor: const Color(0xFFFFCC99), // Peach
      title: 'Hand Bag',
      subtitle: 'Sold for: £5,000',
      sellerName: 'aum_burgains',
    ),
  ];

  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: appBar,
      body: Column(
        children: [
          Row(
            children: [
              TextButton(
                onPressed: (){

                },
                child: CustomText(
                  text: AppStrings.purchases.tr,
                  underline: isSelected ? true : false,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  underlineWidth: 2,
                ),
              ),
              TextButton(
                onPressed: (){

                },
                child: CustomText(
                  text: AppStrings.bids.tr,
                  underline: isSelected ? true : false,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  underlineWidth: 2,
                ),
              ),
              TextButton(
                onPressed: (){

                },
                child: CustomText(
                  text: AppStrings.offers.tr,
                  underline: isSelected ? true : false,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  underlineWidth: 2,
                ),
              ),
              TextButton(
                onPressed: (){

              },
                child: CustomText(
                  text: AppStrings.saved.tr,
                  underline: isSelected ? true : false,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  underlineWidth: 2,
                ),
              ),
            ],
          ),
          chipButtons,
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductTile(item: products[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}


class ProductTile extends StatelessWidget {
  final ActivityProductItem item;

  const ProductTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Container
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CachedImageWidget(
              imageUrl: item.imageUrl,
              icon: Icons.image_outlined,
              iconSize: 40,
              width: 120,
              height: 120,
            ),
          ),
          const SizedBox(width: 16),
          // Details Column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Conditional Status Badge or Label Created Text
                if (item.status != null)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: item.statusColor ?? AppColors.grey86,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      item.status!,
                      style: TextStyle(color: AppColors.textColor, fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  )
                else
                  const Text(
                    "Label Created",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                const SizedBox(height: 8),
                // Title
                Text(
                  item.title,
                  style: const TextStyle(fontSize: 18, color: Colors.black87),
                ),
                // Subtitle (Price or Date)
                Text(
                  item.subtitle,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                // Seller Info
                RichText(
                  text: TextSpan(
                    text: 'From: ',
                    style: TextStyle(color: AppColors.black80Percent, fontSize: 14),
                    children: [
                      TextSpan(
                        text: item.sellerName,
                        style: const TextStyle(color: Colors.cyan, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
