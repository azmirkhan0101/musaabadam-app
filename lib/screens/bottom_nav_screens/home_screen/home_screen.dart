import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/utils/app_strings/app_strings.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';

import '../../../utils/assets_gen/assets.gen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 48.w,
        leading: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: SvgPicture.asset(Assets.icons.search),
        ),
        actions: actionButtons()
      ),
      body: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(text: AppStrings.categories.tr),
              TextButton(onPressed: (){
              },
                  child: TextWidget(
                    text: AppStrings.viewAll.tr,
                    fontSize: 14,
                  )
              )
            ],
          )
        ],
      ),
    );
  }

  //ACTION BUTTONS
List<IconButton> actionButtons(){
    return [
      IconButton(onPressed: (){

      },
          icon: SvgPicture.asset(Assets.icons.message)
      ),
      IconButton(onPressed: (){

      },
          icon: SvgPicture.asset(Assets.icons.notification)
      ),
      IconButton(onPressed: (){

      },
          icon: SvgPicture.asset(Assets.icons.gift)
      )
    ];
}
}
