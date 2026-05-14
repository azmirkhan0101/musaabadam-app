import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_constants.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/cached_image_widget.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';
import 'package:musaab_adam/routes/app_pages.dart';
import '../../../core/assets_gen/assets.gen.dart';
import '../components/livestream_dialogs.dart';

class LiveStreamScreen extends StatelessWidget {
  const LiveStreamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned.fill(child: Image.network(Dummy.live1, fit: BoxFit.cover)),
          SafeArea(
            child: Column(
              children: [
                _headerSection(context),
                Flexible(child: _middleSection(context)),
                _footerSection(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _headerSection(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(onPressed: Get.back, icon: Icon(Icons.arrow_back_ios, color: colorScheme.onSurface)),
              GestureDetector(
                onTap: () => Get.toNamed(AppRoutes.storyScreen),
                child: CachedImageWidget(imageUrl: Dummy.user1, height: 36.h, width: 36.w, borderRadius: 50),
              ),
              const SizedBox(width: 8),
              Text("Azmir Khan", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: colorScheme.onSurface)),
              const Spacer(),
              Icon(Icons.fullscreen, color: colorScheme.onSurface, size: 30),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              SvgPicture.asset(Assets.icons.liveIcon, height: 20),
              const SizedBox(width: 8),
              Icon(Icons.remove_red_eye_outlined, size: 20, color: colorScheme.primary),
              SizedBox(width: 6.w),
              CustomText(text: "5.2k", fontColor: colorScheme.primary, translate: false),
              const SizedBox(width: 12),
              GestureDetector(
                onTap: () => showFollowSellerDialog(context),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  decoration: BoxDecoration(color: colorScheme.primary, borderRadius: BorderRadius.circular(20)),
                  child: Text("Follow", style: TextStyle(color: colorScheme.onPrimary)),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_chipLabel(context, "Notes"), _giveawayCard(context)],
          ),
        ],
      ),
    );
  }

  Widget _middleSection(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(child: Padding(padding: const EdgeInsets.all(16.0), child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          _chatTile(context, "Lora", "Price?", false),
          _chatTile(context, "Alice", "Very nice", true),
        ]))),
        Padding(
          padding: const EdgeInsets.only(right: 16, bottom: 10),
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            _sideIcon(context, AppStrings.more, Assets.icons.more, () => showOptionsDialog(context)),
            _sideIcon(context, AppStrings.boost, Assets.icons.boost, () => Get.toNamed(AppRoutes.boostScreen)),
          ]),
        ),
      ],
    );
  }

  Widget _footerSection(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: colorScheme.surface, borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        TextField(decoration: InputDecoration(hintText: "Type comment........", suffixIcon: SvgPicture.asset(Assets.icons.send, fit: BoxFit.scaleDown))),
        SizedBox(height: 12.h),
        _productInfo(context),
      ]),
    );
  }

  Widget _chipLabel(BuildContext context, String text) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(color: colorScheme.outline, borderRadius: BorderRadius.circular(8)),
      child: Text(text, style: TextStyle(color: colorScheme.onSurface)),
    );
  }

  Widget _giveawayCard(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.6), borderRadius: BorderRadius.circular(8)),
      child: Row(children: [Icon(Icons.card_giftcard, color: colorScheme.primary), const SizedBox(width: 4), Text("Giveaway", style: TextStyle(fontWeight: FontWeight.bold))]),
    );
  }

  Widget _sideIcon(BuildContext context, String label, String asset, VoidCallback onTap) {
    final colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(onTap: onTap, child: Padding(padding: const EdgeInsets.symmetric(vertical: 8), child: Column(children: [
      CircleAvatar(backgroundColor: colorScheme.primary, child: SvgPicture.asset(asset, colorFilter: ColorFilter.mode(colorScheme.onPrimary, BlendMode.srcIn))),
      CustomText(text: label, fontColor: colorScheme.primary, fontSize: 12, fontWeight: FontWeight.bold)
    ])));
  }

  Widget _chatTile(BuildContext context, String user, String msg, bool isMod) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(8),
      decoration: isMod ? BoxDecoration(color: colorScheme.surfaceContainer, borderRadius: BorderRadius.circular(12)) : null,
      child: Row(children: [
        CircleAvatar(radius: 12.r),
        const SizedBox(width: 8),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(user, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(msg, style: TextStyle(color: isMod ? colorScheme.primary : colorScheme.onSurface)),
        ]),
      ]),
    );
  }

  Widget _productInfo(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Row(children: [
      CachedImageWidget(imageUrl: Dummy.product1, borderRadius: 12, height: 45.h, width: 45.w),
      const SizedBox(width: 8),
      Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Nike Air Max", style: TextStyle(fontWeight: FontWeight.bold, color: colorScheme.onSurface)),
      ])),
    ]);
  }
}