import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TipInfoScreen extends StatelessWidget {
  const TipInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            // Your SVG Graphic
            SvgPicture.asset(
              'assets/coin_graphic.svg',
              height: 180,
              width: 180,
            ),
            const SizedBox(height: 40),
            const Text(
              'Support your favorite sellers with tips',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 30),
            // Information List
            _buildInfoRow(
              'Sellers keep 100% of your selected tip amount',
            ),
            _buildInfoRow(
              'Tips are never required, but they\'re a great way to show appreciation',
            ),
            _buildInfoRow(
              'We\'ll shout you out in chat each time you tip the seller',
            ),
            _buildInfoRow(
              'Your credit card company or bank may charge a small transaction fee',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 4.0),
            child: Icon(
              Icons.contrast, // Closest material icon to the one in image
              size: 24,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
                height: 1.4, // Improves readability for multi-line text
              ),
            ),
          ),
        ],
      ),
    );
  }
}