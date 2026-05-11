import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/modules/auth/controllers/auth_controller.dart';
import 'package:musaab_adam/routes/app_pages.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';
import 'package:musaab_adam/widgets/tile_button/tile_button.dart';

import '../../../core/assets_gen/assets.gen.dart';

class ContactUsScreen extends StatelessWidget {

  final AuthController authController = Get.find<AuthController>();
  RxBool isAccountExpanded = false.obs;
  RxBool isGeneralExpanded = false.obs;

  void toggleAccount() => isAccountExpanded.value = !isAccountExpanded.value;
  void toggleGeneral() => isGeneralExpanded.value = !isGeneralExpanded.value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: CustomText(
            text: AppStrings.contactUs,
          fontSize: 18,
          fontWeight: FontWeight.w900,
        ),
        centerTitle: true,
        leading: const BackButton(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            spacing: 10.h,
            children: [
              //SELLER OPTIONS
              if( authController.isSeller.value )...[
                TileButton(
                  title: AppStrings.payouts, svgIconPath: Assets.icons.payouts, isIconDefault: false, onClick: (){
                  Get.toNamed(AppRoutes.payoutScreen);
                },),
              ],
              //ACCOUNT OPTIONS
              expandableSection(
                  title: AppStrings.account,
                  isExpanded: isAccountExpanded,
                  onExpansionChanged: (val) => toggleAccount(),
                  children: [
                    tileButtonWithNavigator(title: AppStrings.accountDeletion, defaultIcon: Icons.no_accounts_outlined, isIconDefault: true),
                    tileButtonWithNavigator(title: AppStrings.banningOrBanned, defaultIcon: Icons.block_flipped, isIconDefault: true),
                    tileButtonWithNavigator(title: AppStrings.duplicateAccount, defaultIcon: Icons.control_point_duplicate, isIconDefault: true),
                    tileButtonWithNavigator(title: AppStrings.orderHistoryRequest, defaultIcon: Icons.history, isIconDefault: true),
                    tileButtonWithNavigator(title: AppStrings.referralCreditInquiries, defaultIcon: Icons.credit_card, isIconDefault: true),
                    tileButtonWithNavigator(title: AppStrings.updateAccountInformation, defaultIcon: Icons.lightbulb_outline, isIconDefault: true),
                  ]
              ),
              expandableSection(
                  title: AppStrings.general,
                  isExpanded: isGeneralExpanded,
                  onExpansionChanged: (val) => toggleGeneral(),
                  children: [
                    tileButtonWithNavigator(title: AppStrings.addNewPayoutMethod.tr, svgIconPath: Assets.icons.newPayment, isIconDefault: false),
                    tileButtonWithNavigator(title: AppStrings.earlyPayoutAccess.tr, svgIconPath: Assets.icons.earlyPayout, isIconDefault: false),
                    tileButtonWithNavigator(title: AppStrings.feeInquiries.tr, svgIconPath: Assets.icons.feeInquiry, isIconDefault: false),
                    tileButtonWithNavigator(title: AppStrings.incorrectBalance.tr, svgIconPath: Assets.icons.insufficientBalance, isIconDefault: false),
                    //tileButtonWithNavigator(title: AppStrings.paypalCashOutError.tr, svgIconPath: Assets.icons.paypal, isIconDefault: false),
                    tileButtonWithNavigator(title: AppStrings.stripeCashOutError.tr, svgIconPath: Assets.icons.stripe, isIconDefault: false),
                  ]
              ),
              const SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }

  //TILE BUTTON WITH NAVIGATOR
  TileButton tileButtonWithNavigator({
    required String title,
    IconData? defaultIcon,
    String? svgIconPath,
    required bool isIconDefault,
  }) {
    return TileButton(
      title: title,
      defaultIcon: defaultIcon,
      svgIconPath: svgIconPath,
      isIconDefault: isIconDefault,
      onClick: () {
        Get.toNamed(
          AppRoutes.orderSupportScreen,
          arguments: title,
        );
      },
    );
  }

  Widget expandableSection({
    required String title,
    required RxBool isExpanded,
    required Function(bool) onExpansionChanged,
    required List<Widget> children
  }) {
    return Obx(() => Theme(
      data: Theme.of(Get.context!).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        title: CustomText(
          text: title,
          fontWeight: FontWeight.w600,
        ),
        tilePadding: EdgeInsets.zero,
        childrenPadding: EdgeInsets.zero,
        initiallyExpanded: isExpanded.value,
        onExpansionChanged: onExpansionChanged,
        trailing: Icon(
          isExpanded.value ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
          color: AppColors.black,
        ),
        children: [
          Column(
            children: children
                .map((child) => Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: child,
            ))
                .toList(),
          ),
        ],
      ),
    ));
  }
}
