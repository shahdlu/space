import 'package:flutter/material.dart';
import 'package:space/core/app_assets.dart';
import 'package:space/core/app_colors.dart';
import 'package:space/core/app_routes.dart';
import 'package:space/core/app_styles.dart';
import 'package:space/screens/widgets/button_widget.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        alignment: AlignmentGeometry.centerLeft,
        children: [
          Image.asset(AppAssets.planet),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              "Explore \nThe \nUniverse",
              style: AppStyles.black48White,
            ),
          ),
          Positioned(
            bottom: 22,
            left: 16,
            right: 16,
            child: ButtonWidget(
              text: "Explore",
              onPressed: () => Navigator.of(context).pushNamed(AppRoutes.home),
            ),
          )
        ],
      ),
    );
  }
}
