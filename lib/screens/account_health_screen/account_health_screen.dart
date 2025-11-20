import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/utils/app_colors/app_colors.dart';
import 'package:musaab_adam/utils/app_strings/app_strings.dart';
import 'package:musaab_adam/widgets/text_widget/text_widgets.dart';

class AccountHealthScreen extends StatelessWidget {
  const AccountHealthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: TextWidget(text: AppStrings.accountHealth.tr),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_new_rounded),
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        spacing: 20.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(text: AppStrings.policyStanding.tr,
          fontWeight: FontWeight.w600,
          ),
          TextWidget(
            text: AppStrings.ourPolicy.tr,
            textAlignment: TextAlign.start,
          fontSize: 16,
          ),
          Stack(
            alignment: AlignmentGeometry.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only( top: 60.h ),
                child: TextWidget(
                    text: AppStrings.veryPoor.tr,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 200.h,
                child: PieChart(
                    PieChartData(
                        sections: [
                          PieChartSectionData(
                              value: 10,
                              radius: 20.r,
                              color: Colors.transparent,
                              showTitle: false
                          ),
                          PieChartSectionData(
                              value: 3,
                              radius: 20.r,
                              color: AppColors.orange,
                              showTitle: false
                          ),
                          PieChartSectionData(
                              value: 7,
                              radius: 20.r,
                              color: AppColors.greyA8,
                              showTitle: false
                            //borderSide: BorderSide(color: Colors.red, width: 5, style: BorderStyle.solid, ),
                          ),
                        ]
                    )
                ),
              )
            ],
          )
        ],
      ),
      ),
    );
  }
}
