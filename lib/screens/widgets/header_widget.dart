import 'package:flutter/material.dart';

import '../../core/app_assets.dart';
import '../../core/app_colors.dart';
import '../../core/app_styles.dart';

class HeaderWidget extends StatelessWidget {
  final String header;
  final String title;
  final bool isDetails;

  const HeaderWidget({
    super.key,
    required this.title,
    required this.header,
    this.isDetails = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.topLeft,
      children: [
        Image.asset(AppAssets.homePlanet),
        Container(
          height: 210,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.black, AppColors.transparent],
              begin: AlignmentGeometry.bottomCenter,
              end: AlignmentGeometry.topCenter,
            ),
          ),
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 100,
            children: [
              Stack(
                alignment: AlignmentGeometry.center,
                children: [
                  if (isDetails)
                    Align(
                      alignment: AlignmentGeometry.topLeft,
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back),
                        style: IconButton.styleFrom(
                          backgroundColor: AppColors.red,
                          foregroundColor: AppColors.white,
                        ),
                      ),
                    ),
                  Center(child: Text(header, style: AppStyles.bold24White)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  title,
                  style: AppStyles.bold24White,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
