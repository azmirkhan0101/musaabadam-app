import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/routes/app_pages/app_pages.dart';
import 'package:musaab_adam/screens/home_screens/notification_screen/controller/notification_screen_controller.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';
import 'package:musaab_adam/utils/app_strings/app_strings.dart';
import 'package:musaab_adam/widgets/image_widget/image_widget.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';

import '../../../utils/assets_gen/assets.gen.dart';

class NotificationScreen extends StatelessWidget {

  final NotificationScreenController controller = Get.find<NotificationScreenController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(),
      body: Expanded(
              child: ListView.builder(
                itemCount: 7,
                  itemBuilder: (context,index){
                return notificationItemWidget();
              })
      ),
    );
  }

  appBar(){
    return AppBar(
      forceMaterialTransparency: true,
      leading: IconButton(
          onPressed: (){
            Get.toNamed(AppRoutes.MAIN_SCREEN);
          },
          icon:Icon(Icons.arrow_back_sharp)
      ),
      title: Center(
        child: TextWidget(
          textAlignment: TextAlign.center,
          text: AppStrings.notification.tr,
          fontColor: AppColors.black,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),
      actions: [
        IconButton(onPressed: (){
        },
            icon: Icon(Icons.settings)
        )
      ],
    );
  }

  notificationItemWidget(){
    return Container(
      height: 80,
      margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15),
      padding: EdgeInsets.symmetric(horizontal: 10,),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 2, color: AppColors.antiFlashWhite))
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: AlignmentGeometry.center,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 8,
            ),
          ),
          Expanded(
            child: Align(
              alignment: AlignmentGeometry.centerLeft,
              child: ListTile(
                leading: ImageWidget(
                    width: 30,
                    height: 30,
                    imagePath: Assets.images.userPhoto.keyName
                ),
                title: TextWidget(text: "Ronaldo liked your post",
                  textAlignment: TextAlign.left,
                ),
                subtitle: TextWidget(text: "My favourite place - 2h ago",
                  textAlignment: TextAlign.left,),
              ),
            ),
          )
        ],
      ),
    );
  }

}
