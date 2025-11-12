import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/routes/app_pages/app_pages.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';
import 'package:musaab_adam/utils/app_strings/app_strings.dart';
import 'package:musaab_adam/widgets/livestream_grid_item/livestream_grid_item.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';
import 'package:musaab_adam/widgets/trending_products_item/trending_products_item.dart';

import '../../../utils/assets_gen/assets.gen.dart';
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
                    TextWidget(text: AppStrings.categories.tr),
                    TextButton(onPressed: (){
                    },
                        child: TextWidget(
                          text: AppStrings.viewAll.tr,
                          fontSize: 14,
                          fontColor: AppColors.brandColor,
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
                child: TextWidget(
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
                    TextWidget(text: AppStrings.trendingProducts.tr),
                    TextButton(onPressed: (){
                    },
                        child: TextWidget(
                          text: AppStrings.viewAll.tr,
                          fontSize: 14,
                          fontColor: AppColors.brandColor,
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
                Get.toNamed(AppRoutes.SIGNIN_SCREEN);
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
        Get.toNamed(AppRoutes.INBOX_SCREEN);
      },
          icon: SvgPicture.asset(Assets.icons.message)
      ),
      IconButton(onPressed: (){
        Get.toNamed(AppRoutes.NOTIFICATION_SCREEN);
      },
          icon: SvgPicture.asset(Assets.icons.notification)
      ),
      IconButton(onPressed: (){
        Get.toNamed(AppRoutes.INVITE_SCREEN);
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
          CategoryItem(height: 100, width: 100, imageHeight: 62, imageWidth: 85, imagePath: Assets.images.circleOrange.keyName, itemName: AppStrings.forYou),
          CategoryItem(height: 100, width: 100, imageHeight: 62, imageWidth: 85, imagePath: Assets.images.arrowOrange.keyName, itemName: AppStrings.followedHosts),
          CategoryItem(imagePath: Assets.images.watch.keyName, itemName: AppStrings.watch),
          CategoryItem(imagePath: Assets.images.jwelery.keyName, itemName: AppStrings.jewelry),
          CategoryItem(imagePath: Assets.images.bags.keyName, itemName: AppStrings.bags),
          CategoryItem(imagePath: Assets.images.shoes.keyName, itemName: AppStrings.shoes),
          CategoryItem(imagePath: Assets.images.books.keyName, itemName: AppStrings.books),
          CategoryItem(imagePath: Assets.images.beauty.keyName, itemName: AppStrings.beauty),
          CategoryItem(imagePath: Assets.images.tools.keyName, itemName: AppStrings.tools),
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
