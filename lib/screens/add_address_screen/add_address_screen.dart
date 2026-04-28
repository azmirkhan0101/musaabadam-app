import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/screens/add_address_screen/controller/add_address_screen_controller.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/custom_button.dart';
import 'package:musaab_adam/widgets/sized_box_widget/sized_box_widget.dart';
import 'package:musaab_adam/widgets/text_field_widget/custom_text_field.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';

class AddAddressScreen extends StatelessWidget {

  final AddAddressScreenController controller = Get.find<AddAddressScreenController>();

  AddAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.arrow_back_ios_new_rounded)
        ),
        title: CustomText(text: AppStrings.addAddress.tr,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric( horizontal: 20.w ),
        child: Column(
          children: [
            SizedBoxWidget(height: 30,),
            CustomTextField(
                hintText: AppStrings.fullName.tr,
                controller: controller.fullNameController,
              borderRadius: 10,
            ),
            SizedBoxWidget(height: 15,),
            CustomTextField(
              hintText: AppStrings.address.tr,
              controller: controller.fullNameController,
              borderRadius: 10,
            ),
            SizedBoxWidget(height: 15,),
            CustomTextField(
              hintText: AppStrings.city.tr,
              controller: controller.fullNameController,
              borderRadius: 10,
            ),
            SizedBoxWidget(height: 15,),
            CustomTextField(
              hintText: AppStrings.state.tr,
              controller: controller.fullNameController,
              borderRadius: 10,
            ),
            SizedBoxWidget(height: 15,),CustomTextField(
              hintText: AppStrings.postalCode.tr,
              controller: controller.fullNameController,
              borderRadius: 10,
            ),
            SizedBoxWidget(height: 15,),
          DropdownMenu<int>(
            width: double.infinity,
            //main visible field
            inputDecorationTheme: InputDecorationTheme(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(color: AppColors.orange, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(color: Colors.orange, width: 1),
              ),
            ),
            //dropdown popup list
            menuStyle: MenuStyle(
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // popup border radius
                ),
              ),
              backgroundColor: WidgetStateProperty.all(Colors.white),
              elevation: WidgetStateProperty.all(4),
            ),
            hintText: AppStrings.selectCountry.tr,
            onSelected: (value) {},
            dropdownMenuEntries: const [
              DropdownMenuEntry(value: 0, label: "Uk"),
              DropdownMenuEntry(value: 1, label: "Philippines"),
              DropdownMenuEntry(value: 2, label: "Romania"),
              DropdownMenuEntry(value: 3, label: "Indonesia"),
              DropdownMenuEntry(value: 4, label: "Malaysia"),
              DropdownMenuEntry(value: 5, label: "Poland"),
            ],
          ),
            SizedBoxWidget(height: 20,),
            Row(
              children: [
                Obx((){
                  return Checkbox(
                    side: BorderSide(color: Colors.red, width: 2),
                    value: controller.isDefaultShippingChecked.value,
                    onChanged: (isChecked){
                      controller.isDefaultShippingChecked.value = isChecked!;
                    },
                    checkColor: AppColors.white,
                    activeColor: AppColors.orange,
                    focusColor: AppColors.orange,
                    hoverColor: AppColors.orange,
                  );
                }),
                CustomText(text: AppStrings.defaultShipping.tr)
              ],
            ),
            Row(
              children: [
                Obx((){
                  return Checkbox(
                    side: BorderSide(color: Colors.red, width: 2),
                    value: controller.isReturnAddressChecked.value,
                    onChanged: (isChecked){
                      controller.isReturnAddressChecked.value = isChecked!;
                    },
                    checkColor: AppColors.white,
                    activeColor: AppColors.orange,
                    focusColor: AppColors.orange,
                    hoverColor: AppColors.orange,
                  );
                }),
                CustomText(text: AppStrings.returnAddress.tr)
              ],
            ),
            Expanded(
                child: SafeArea(
                  child: Align(
                    alignment: AlignmentGeometry.bottomCenter,
                    child: Row(
                      children: [
                        SizedBoxWidget(width: 15,),
                        Expanded(
                          child: CustomButton(
                            label: AppStrings.cancel.tr,
                            backgroundColor: AppColors.grey86,
                            buttonHeight: 40,
                          ),
                        ),
                        SizedBoxWidget(width: 15,),
                        Expanded(
                          child: CustomButton(
                            label: AppStrings.save.tr,
                            backgroundColor: AppColors.brandColorShade,
                            buttonHeight: 40,
                            textColor: AppColors.primaryColor,
                          ),
                        ),
                        SizedBoxWidget(width: 15,),
                      ],
                    ),
                  ),
                )
            ),
            SizedBoxWidget(height: 20,)
          ],
        ),
      ),
    );
  }
}
