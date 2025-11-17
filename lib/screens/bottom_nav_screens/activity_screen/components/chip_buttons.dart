import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_strings/app_strings.dart';
import '../../../../widgets/choice_chip_widget/choice_chip_widget.dart';
import '../../../../widgets/sized_box_widget/sized_box_widget.dart';

Widget chipButtons = SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: [
      SizedBoxWidget(width: 20),
      ChoiceChipWidget(
        label: AppStrings.all.tr,
        borderRadius: 100,
        padding: [8, 4],
        selected: true,
        //TODO
        colorChangeable: true,
        onSelected: (isSelected) {},
      ),
      SizedBoxWidget(width: 10),
      ChoiceChipWidget(
        label: AppStrings.inProgress.tr,
        borderRadius: 100,
        padding: [8, 4],
        selected: false,
        //TODO
        colorChangeable: true,
        onSelected: (isSelected) {},
      ),
      SizedBoxWidget(width: 10),
      ChoiceChipWidget(
        label: AppStrings.completed.tr,
        borderRadius: 100,
        padding: [8, 4],
        selected: false,
        //TODO
        colorChangeable: true,
        onSelected: (isSelected) {},
      ),
      SizedBoxWidget(width: 10),
      ChoiceChipWidget(
        label: AppStrings.refunds.tr,
        borderRadius: 100,
        padding: [8, 4],
        selected: false,
        //TODO
        colorChangeable: true,
        onSelected: (isSelected) {},
      ),
      SizedBoxWidget(width: 10),
      ChoiceChipWidget(
        label: AppStrings.cancelled.tr,
        borderRadius: 100,
        padding: [8, 4],
        selected: false,
        //TODO
        colorChangeable: true,
        onSelected: (isSelected) {},
      ),
      SizedBoxWidget(width: 10),
      ChoiceChipWidget(
        label: AppStrings.tips.tr,
        borderRadius: 100,
        padding: [8, 4],
        selected: false,
        //TODO
        colorChangeable: true,
        onSelected: (isSelected) {},
      ),
      SizedBoxWidget(width: 10),
      ChoiceChipWidget(
        label: AppStrings.pendingReview.tr,
        borderRadius: 100,
        padding: [8, 4],
        selected: false,
        //TODO
        colorChangeable: true,
        onSelected: (isSelected) {},
      ),
      SizedBoxWidget(width: 10),
      ChoiceChipWidget(
        label: AppStrings.communityBoost.tr,
        borderRadius: 100,
        padding: [8, 4],
        selected: false,
        //TODO
        colorChangeable: true,
        onSelected: (isSelected) {},
      ),
    ],
  ),
);
