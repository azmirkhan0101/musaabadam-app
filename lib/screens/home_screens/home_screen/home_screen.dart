import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/routes/app_pages.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/widgets/livestream_grid_item/livestream_grid_item.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';
import 'package:musaab_adam/widgets/trending_products_item/trending_products_item.dart';

import '../../../core/assets_gen/assets.gen.dart';
import '../../../widgets/category_item/category_item.dart';
import '../../../widgets/sized_box_widget/sized_box_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(),
        body: SingleChildScrollView(
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
                    CustomText(text: AppStrings.categories.tr),
                    TextButton(onPressed: (){
                    },
                        child: CustomText(
                          text: AppStrings.viewAll.tr,
                          fontSize: 14,
                          fontColor: AppColors.primaryColor,
                        )
                    )
                  ],
                ),
              ),
              //===================HORIZONTAL SCROLL CATEGORY ITEMS=========================//
              categoryItems(),
              SizedBoxWidget(height: 15.h,),
              //===================LIVE STREAMS - VIEW ALL=========================//
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: CustomText(
                    text: AppStrings.liveStreams.tr,
                  textAlignment: TextAlign.left,
                ),
              ),
              SizedBoxWidget(height: 15.h,),
              //===================LIVE STREAM ITEMS=========================//
              SizedBox(
                height: 240.h,
                width: double.infinity,
                child: Center(child: liveStreamGridView(),)
              ),
              SizedBoxWidget(height: 15.h,),
              //===================TRENDING PRODUCTS - VIEW ALL=========================//
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: AppStrings.trendingProducts.tr),
                    TextButton(onPressed: (){
                    },
                        child: CustomText(
                          text: AppStrings.viewAll.tr,
                          fontSize: 14,
                          fontColor: AppColors.primaryColor,
                        )
                    )
                  ],
                ),
              ),
              SizedBoxWidget(height: 10.h,),
              //===================HORIZONTAL SCROLL TRENDING PRODUCTS ITEMS=========================//
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBoxWidget(width: 20.w,),
                    TrendingProductsItem(),
                    TrendingProductsItem(),
                    TrendingProductsItem(),
                    TrendingProductsItem(),
                    TrendingProductsItem(),
                    TrendingProductsItem(),
                    TrendingProductsItem(),
                    SizedBoxWidget(width: 12.w,),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }


  //SCROLLABLE LIVE STREAMS
  liveStreamGridView(){
    return Align(
      alignment: Alignment.topCenter,
      child: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        itemCount: 20,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            crossAxisSpacing: 10.w,
            mainAxisSpacing: 10.h,
            mainAxisExtent: 113.h,
          ),
          itemBuilder: (context, index){
            return Center(child: LivestreamGridItem(
              onTap: (){
                Get.toNamed(AppRoutes.signInScreen);
              },
            ));
          }
      ),
    );
  }

  //ACTION BUTTONS
List<IconButton> actionButtons(){
    return [
      IconButton(onPressed: (){
        Get.toNamed(AppRoutes.inboxScreen);
      },
          icon: SvgPicture.asset(Assets.icons.message)
      ),
      IconButton(onPressed: (){
        Get.toNamed(AppRoutes.notificationScreen);
      },
          icon: SvgPicture.asset(Assets.icons.notification)
      ),
      IconButton(onPressed: (){
        Get.toNamed(AppRoutes.inviteScreen);
      },
          icon: SvgPicture.asset(Assets.icons.gift)
      )
    ];
}

categoryItems(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBoxWidget(
            width: 15.w,
          ),
          CategoryItem(height: 100, width: 100, imageHeight: 62, imageWidth: 85, image: Assets.images.circleOrange.keyName, itemName: AppStrings.forYou),
          CategoryItem(height: 100, width: 100, imageHeight: 62, imageWidth: 85, image: Assets.images.arrowOrange.keyName, itemName: AppStrings.followedHosts),
          // CategoryItem(imagePath: Assets.images.watch.keyName, itemName: AppStrings.watch),
          // CategoryItem(imagePath: Assets.images.jwelery.keyName, itemName: AppStrings.jewelry),
          // CategoryItem(imagePath: Assets.images.bags.keyName, itemName: AppStrings.bags),
          // CategoryItem(imagePath: Assets.images.shoes.keyName, itemName: AppStrings.shoes),
          // CategoryItem(imagePath: Assets.images.books.keyName, itemName: AppStrings.books),
          // CategoryItem(imagePath: Assets.images.beauty.keyName, itemName: AppStrings.beauty),
          // CategoryItem(imagePath: Assets.images.tools.keyName, itemName: AppStrings.tools),
          SizedBoxWidget(
            width: 5.w,
          )
        ],
      ),
    );
}

appBar(){
    return AppBar(
      forceMaterialTransparency: true,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.transparent
        ),
        backgroundColor: Colors.transparent,
        leadingWidth: 48.w,
        leading: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: SvgPicture.asset(Assets.icons.search),
        ),
        actions: actionButtons()
    );
}
}
