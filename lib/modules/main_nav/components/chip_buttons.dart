import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/custom_choice_chip.dart';
import '../../../widgets/sized_box_widget/sized_box_widget.dart';

Widget chipButtons = SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: [
      SizedBoxWidget(width: 20),
      CustomChoiceChip(
        label: AppStrings.all.tr,
        borderRadius: 100,
        padding: [8, 4],
        selected: true,
        //TODO
        colorChangeable: true,
        onSelected: (isSelected) {},
      ),
      SizedBoxWidget(width: 10),
      CustomChoiceChip(
        label: AppStrings.inProgress.tr,
        borderRadius: 100,
        padding: [8, 4],
        selected: false,
        //TODO
        colorChangeable: true,
        onSelected: (isSelected) {},
      ),
      SizedBoxWidget(width: 10),
      CustomChoiceChip(
        label: AppStrings.completed.tr,
        borderRadius: 100,
        padding: [8, 4],
        selected: false,
        //TODO
        colorChangeable: true,
        onSelected: (isSelected) {},
      ),
      SizedBoxWidget(width: 10),
      CustomChoiceChip(
        label: AppStrings.refunds.tr,
        borderRadius: 100,
        padding: [8, 4],
        selected: false,
        //TODO
        colorChangeable: true,
        onSelected: (isSelected) {},
      ),
      SizedBoxWidget(width: 10),
      CustomChoiceChip(
        label: AppStrings.cancelled.tr,
        borderRadius: 100,
        padding: [8, 4],
        selected: false,
        //TODO
        colorChangeable: true,
        onSelected: (isSelected) {},
      ),
      SizedBoxWidget(width: 10),
      CustomChoiceChip(
        label: AppStrings.tips.tr,
        borderRadius: 100,
        padding: [8, 4],
        selected: false,
        //TODO
        colorChangeable: true,
        onSelected: (isSelected) {},
      ),
      SizedBoxWidget(width: 10),
      CustomChoiceChip(
        label: AppStrings.pendingReview.tr,
        borderRadius: 100,
        padding: [8, 4],
        selected: false,
        //TODO
        colorChangeable: true,
        onSelected: (isSelected) {},
      ),
      SizedBoxWidget(width: 10),
      CustomChoiceChip(
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
