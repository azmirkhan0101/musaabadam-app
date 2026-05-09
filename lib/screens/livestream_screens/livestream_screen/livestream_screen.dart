import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/core/utils/app_colors.dart';
import 'package:musaab_adam/core/utils/app_constants.dart';
import 'package:musaab_adam/core/utils/app_strings.dart';
import 'package:musaab_adam/core/widgets/cached_image_widget.dart';
import 'package:musaab_adam/core/widgets/custom_text.dart';

import '../../../core/assets_gen/assets.gen.dart';

class LiveStreamScreen extends StatelessWidget {
  const LiveStreamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //=====================BACKGROUND IMAGE========================
          Positioned.fill(
            child: Image.network(
              Dummy.live1,
              fit: BoxFit.cover,
            ),
          ),

          //=====================OVERLAY CONTENT========================
          SafeArea(
            child: Column(
              children: [
                headerSection(context: context),
                const Spacer(),
                middleSection(context: context),
                footerSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget headerSection({required BuildContext context}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                padding: EdgeInsets.all(0),
                  onPressed: (){
                Get.back();
              }, icon: Icon(Icons.arrow_back_ios, color: Colors.black)),
              CachedImageWidget(
                  imageUrl: Dummy.user1,
                height: 36.h,
                width: 36.w,
                borderRadius: 50,
              ),
              const SizedBox(width: 8),
              const Text(
                "Azmir Khan",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              const Icon(Icons.fullscreen, color: Colors.black, size: 30),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            spacing: 6,
            children: [
              SvgPicture.asset(Assets.icons.liveIcon, height: 20),
              const SizedBox(width: 8),
              const Icon(Icons.remove_red_eye_outlined, size: 20, color: AppColors.primaryColor,),
              CustomText(text: "5.2k", fontColor: AppColors.primaryColor, translate: false,),
              const SizedBox(width: 12),
              GestureDetector(
                onTap: (){
                  showFollowSellerDialog(context);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text("Follow", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              chipLabel("Notes"),
              giveawayCard(),
            ],
          )
        ],
      ),
    );
  }

  Widget middleSection({required BuildContext context}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        //=====================CHAT SECTION========================
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                chatTile("Lora", "Price?", false),
                chatTile("David", "I want to buy", false),
                chatTile("Alice", "Very nice", true),
              ],
            ),
          ),
        ),
        //=====================SIDE ACTIONS========================
        Padding(
          padding: const EdgeInsets.only(right: 16, bottom: 10),
          child: Column(
            children: [
              sideIcon( AppStrings.more, Assets.icons.more,
                  (){
                showOptionsDialog(context);
                  },
                  iconSize: 8
              ),
              sideIcon( AppStrings.boost, Assets.icons.boost,
                    (){

                },
              ),
              sideIcon( AppStrings.clip, Assets.icons.clip,
                    (){

                },
              ),
              sideIcon( AppStrings.share, Assets.icons.share,
                    (){

                },
              ),
              sideIcon( AppStrings.wallet, Assets.icons.wallet,
                    (){

                },
              ),
              sideIcon( AppStrings.shop, Assets.icons.shop,
                    (){

                },
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget footerSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Type comment........",
              suffixIcon: SvgPicture.asset('assets/send.svg', fit: BoxFit.scaleDown),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              contentPadding: const EdgeInsets.symmetric(horizontal: 12),
            ),
          ),
          const SizedBox(height: 12),
          productInfo(),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(child: actionButton("Custom", Colors.white, Colors.cyan, true)),
              const SizedBox(width: 12),
              Expanded(child: actionButton("Bid", Colors.orange, Colors.orange, false)),
            ],
          )
        ],
      ),
    );
  }

  //=====================HELPER UI COMPONENTS========================

  Widget chipLabel(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(color: AppColors.grey86, borderRadius: BorderRadius.circular(8)),
      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }

  Widget giveawayCard() {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(color: Colors.grey.withOpacity(0.6), borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          const Icon(Icons.card_giftcard, color: Colors.blueAccent),
          const SizedBox(width: 4),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Giveaway", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
              Text("356 Entries", style: TextStyle(fontSize: 10)),
            ],
          )
        ],
      ),
    );
  }

  Widget sideIcon(String label, String asset, VoidCallback onTap, {double iconSize = 20}) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: AppColors.primaryColor,
              child: SvgPicture.asset(asset, colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn), width: iconSize, height: iconSize),
            ),
            Text(label, style: TextStyle(color: AppColors.primaryColor, fontSize: 12, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget chatTile(String user, String msg, bool isMod) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(8),
      decoration: isMod ? BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        border: Border.all(color: Colors.cyan),
        borderRadius: BorderRadius.circular(12),
      ) : null,
      child: Row(
        children: [
          const CircleAvatar(radius: 12, backgroundImage: NetworkImage('https://i.pravatar.cc/100')),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(user, style: const TextStyle(fontWeight: FontWeight.bold)),
                  if (isMod) ...[
                    const SizedBox(width: 4),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      color: Colors.orange.shade200,
                      child: const Text("MOD", style: TextStyle(fontSize: 10, color: Colors.orange)),
                    )
                  ]
                ],
              ),
              Text(msg, style: TextStyle(color: isMod ? Colors.orange : Colors.black)),
            ],
          )
        ],
      ),
    );
  }

  Widget productInfo() {
    return Row(
      children: [
        Image.network('https://i.imgur.com/u7r37pS.png', width: 50, height: 50),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Nike Air Max Sneakers", style: TextStyle(fontWeight: FontWeight.bold)),
              const Text("Size : 34-44  • New  • 1 Available", style: TextStyle(fontSize: 12)),
              const Text("+shipping+taxes", style: TextStyle(fontSize: 10, color: Colors.grey)),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text("£4.13", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("00:09", style: TextStyle(color: Colors.red, fontSize: 12)),
          ],
        )
      ],
    );
  }

  Widget actionButton(String label, Color bg, Color border, bool isOutlined) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: border, width: 2),
      ),
      alignment: Alignment.center,
      child: Text(
        label,
        style: TextStyle(color: isOutlined ? border : Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  void showOptionsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: const Color(0xFFDDE9EC), // Light blue background
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Options',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildOptionButton(
                      icon: Icons.report_problem_outlined,
                      label: 'Report',
                      onTap: () {},
                    ),
                    const SizedBox(width: 16),
                    _buildOptionButton(
                      icon: Icons.volume_up_outlined,
                      label: 'Sound',
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildOptionButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 140,
          decoration: BoxDecoration(
            color: const Color(0xFF008EAC), // Teal/Blue color
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white, size: 48),
              const SizedBox(height: 8),
              Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showFollowSellerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          backgroundColor: const Color(0xFFD9E9F0), // Matches the light blue background
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Constrains dialog height to content
              children: [
                const Text(
                  'Follow This Seller?',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 16),
                CachedImageWidget(
                    imageUrl: Dummy.user1,
                  height: 50.h,
                  width: 50.w,
                  borderRadius: 50,
                ),
                const SizedBox(height: 8),
                const Text(
                  'Azmir Khan',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    // "Not Now" Outlined Button
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => Navigator.pop(context),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          side: const BorderSide(color: Color(0xFF0083A4), width: 2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          'Not Now',
                          style: TextStyle(
                            color: Color(0xFF0083A4),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    // "Follow" Filled Button
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your follow logic here
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0083A4),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          'Follow',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}