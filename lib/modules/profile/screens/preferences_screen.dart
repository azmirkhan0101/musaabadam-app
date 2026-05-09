import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';

class PreferencesScreen extends StatelessWidget {
  PreferencesScreen({super.key});

  // State variables
  final RxnString selectedCountry = RxnString();

  // State variables using RxBool
  final RxBool directMessages = false.obs;
  final RxBool showSensitiveContent = false.obs;
  final RxBool enablePrivateEntry = false.obs;
  final RxBool contentBoost = false.obs;
  final RxBool realtimeTool = false.obs;
  final RxBool rewardsStatus = false.obs;
  final RxBool pastShows = false.obs;
  final RxBool activityStatus = false.obs;
  final RxBool syncContacts = false.obs;
  final RxBool suggestAccount = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leading: const BackButton(),
        title: Text(
          'Preferences',
          style: TextStyle(color: AppColors.textColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            // Country Selector
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.orange.shade300),
                borderRadius: BorderRadius.circular(4),
              ),
              child: DropdownButtonHideUnderline(
                child: Obx((){
                  return DropdownButton<String>(
                    value: selectedCountry.value,
                    dropdownColor: AppColors.backgroundColor,
                    isExpanded: true,
                    hint: const Text("Select Country", style: TextStyle(color: Colors.grey)),
                    items: const [
                      DropdownMenuItem(value: "USA", child: Text("USA")),
                      DropdownMenuItem(value: "UK", child: Text("UK")),
                      DropdownMenuItem(value: "CANADA", child: Text("CANADA")),
                      DropdownMenuItem(value: "GERMANY", child: Text("GERMANY")),
                      DropdownMenuItem(value: "FRANCE", child: Text("FRANCE")),
                      DropdownMenuItem(value: "NETHERLANDS", child: Text("NETHERLANDS")),
                    ],
                    onChanged: (value) {
                      if( value == null ) return;
                      selectedCountry.value = value;
                    },
                  );
                }),
              ),
            ),
            const SizedBox(height: 20),

            // Preference List
            switchTile( AppStrings.directMessages, directMessages, (val) {}),
            switchTile( AppStrings.showSensitiveContent, showSensitiveContent, (val) {}),
            switchTile( AppStrings.enablePrivateEntry, enablePrivateEntry, (val) {}),
            switchTile( AppStrings.contentCommunityBoost, contentBoost, (val) {}),
            switchTile( AppStrings.showRealtimePromoteTool, realtimeTool, (val) {}),
            switchTile( AppStrings.displayRewardsClubStatus, rewardsStatus, (val) {}),
            switchTile( AppStrings.yourPastShows, pastShows, (val) {}),
            switchTile( AppStrings.activityStatus, activityStatus, (val) {}),
            switchTile( AppStrings.syncContacts, syncContacts, (val) {}),
            switchTile( AppStrings.suggestAccountToOthers, suggestAccount, (val) {}),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget switchTile(String title, RxBool state, Function(bool) onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: CustomText(
              text: title,
              textAlignment: TextAlign.left,
              fontWeight: FontWeight.w700,
      ),
          ),
          Obx(() => Switch(
            value: state.value,
            activeThumbColor: AppColors.backgroundColor,
            inactiveTrackColor: Colors.grey.shade200,
            inactiveThumbColor: AppColors.primaryColor,
            activeTrackColor: AppColors.primaryColor,
            onChanged: (bool newValue) {
              state.value = newValue;
              onChanged(newValue);
            },
          )),
        ],
      ),
    );
  }
}