import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_constants.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';
import 'package:musaab_adam/routes/app_pages.dart';
import 'package:musaab_adam/widgets/livestream_grid_item/livestream_grid_item.dart';

import '../../../core/assets_gen/assets.gen.dart';
import '../../../core/components/category_item.dart';
import '../../../widgets/sized_box_widget/sized_box_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(),
      // Use CustomScrollView to allow the Grid and other elements to scroll together
      body: CustomScrollView(
        slivers: [
          // All non-scrollable widgets must be wrapped in SliverToBoxAdapter
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //===================CATEGORIES - VIEW ALL=========================//
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: AppStrings.categories,
                        fontWeight: FontWeight.w600,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: CustomText(
                          text: AppStrings.viewAll,
                          fontSize: 14,
                          fontColor: AppColors.primaryColor,
                        ),
                      )
                    ],
                  ),
                ),
                //===================HORIZONTAL SCROLL CATEGORY ITEMS=========================//
                categoryItems(),
                buildPromoCard(
                  backgroundImage: Dummy.cover1,
                  title: 'Bidsrush Wonderland',
                  subTitle: 'Shop the largest Christmast market and sleigh the sales, 10-15 Dec!',
                  liveShowsCount: 70,
                  viewerCount: '3K',
                ),
                //===================LIVE STREAMS HEADER=========================//
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: CustomText(
                    text: AppStrings.liveStreams,
                    fontWeight: FontWeight.w600,
                    textAlignment: TextAlign.left,
                  ),
                ),
                SizedBoxWidget(height: 15.h),
              ],
            ),
          ),
          //===================LIVE STREAM GRID=========================//
          // This fills the rest of the scrollable area
          liveStreamSliverGrid(),

          // Optional padding at the bottom
          SliverToBoxAdapter(child: SizedBox(height: 20.h)),
        ],
      ),
    );
  }

  // Refactored to SliverGrid
  Widget liveStreamSliverGrid() {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 10.h,
          mainAxisExtent: 185.h,
        ),
        delegate: SliverChildBuilderDelegate(
              (context, index) {
            return LivestreamGridItem(
              userName: "Suja Rae",
              userAvatarUrl: Dummy.user1,
              thumbnailUrl: Dummy.live1,
              viewerCount: "2.5k",
              streamTitle: "Live Bag Haul Don’t Miss Out",
              category: "Women’s Category",
              onTap: () {},
            );
          },
          childCount: 8,
        ),
      ),
    );
  }

  //ACTION BUTTONS
  List<IconButton> actionButtons() {
    return [
      IconButton(
          onPressed: () {
            Get.toNamed(AppRoutes.inboxScreen);
          },
          icon: SvgPicture.asset(Assets.icons.message)),
      IconButton(
          onPressed: () {
            Get.toNamed(AppRoutes.notificationScreen);
          },
          icon: SvgPicture.asset(Assets.icons.notification)),
      IconButton(
          onPressed: () {
            Get.toNamed(AppRoutes.inviteScreen);
          },
          icon: SvgPicture.asset(Assets.icons.gift))
    ];
  }

  SingleChildScrollView categoryItems() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBoxWidget(
            width: 15.w,
          ),
          CategoryItem(image: "", assetImage: Assets.images.forYou.keyName, itemName: AppStrings.forYou),
          CategoryItem(image: "", assetImage: Assets.images.followedHost.keyName, itemName: AppStrings.followedHosts),
          CategoryItem(itemName: "Watch", image: Dummy.product1),
          CategoryItem(itemName: "Watch", image: Dummy.product1),
          CategoryItem(itemName: "Watch", image: Dummy.product1),
          CategoryItem(itemName: "Watch", image: Dummy.product1),
          CategoryItem(itemName: "Watch", image: Dummy.product1),
          CategoryItem(itemName: "Watch", image: Dummy.product1),
          SizedBoxWidget(
            width: 5.w,
          )
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      leading: null,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      forceMaterialTransparency: true,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
      backgroundColor: Colors.transparent,
      title: SizedBox(
        height: 37.h,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
              prefixIcon: Padding(
                padding: EdgeInsets.all(12.w),
                child: SvgPicture.asset(
                  Assets.icons.search,
                  colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                ),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16.w),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.r),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.r),
                borderSide: const BorderSide(color: Colors.grey, width: 1.5),
              ),
            ),
          ),
        ),
      ),
      actions: actionButtons(),
    );
  }

  Widget buildPromoCard({
    required String backgroundImage,
    required String title,
    required String subTitle,
    required int liveShowsCount,
    required String viewerCount,
  }) {
    return Container(
      height: 180,
      width: double.infinity,
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        image: DecorationImage(
          image: NetworkImage(backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.black.withOpacity(0.6),
              Colors.transparent,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              subTitle,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Color(0xFF00838F), // Simplified manual color
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: SvgPicture.asset(Assets.icons.analysis),
                ),

                const SizedBox(width: 5),
                Text(
                  '$liveShowsCount Live Shows $viewerCount Viewers',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}