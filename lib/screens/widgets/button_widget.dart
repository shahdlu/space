import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_routes.dart';
import '../../core/app_styles.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  const ButtonWidget({
    super.key,
    required this.text,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            foregroundColor: AppColors.white,
            backgroundColor: AppColors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(30)
            ),
            padding: EdgeInsets.all(18)
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: AppStyles.semiBold20White,
            ),
            Icon(Icons.arrow_forward)
          ],
        )
    );
  }
}
