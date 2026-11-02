import 'package:flutter/material.dart';
import 'package:space/core/app_colors.dart';
import 'package:space/core/app_styles.dart';
import 'package:space/models/planet_model.dart';
import 'package:space/screens/widgets/header_widget.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final plant = ModalRoute.of(context)?.settings.arguments as PlanetModel;
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          HeaderWidget(
            header: plant.name,
            title: plant.title,
            isDetails: true,
          ),
          Expanded(
            child: SingleChildScrollView(
              child:Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  spacing: 12,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(plant.image),
                    Text("About", style: AppStyles.bold24White),
                    Text(plant.about, style: AppStyles.regular16White),
                    Text("Distance from Sun (km) : ${plant.distanceFromSun}", style: AppStyles.bold16White),
                    Text("Length of Day (hours) : ${plant.lengthOfDay}", style: AppStyles.bold16White),
                    Text("Orbital Period (Earth years) : ${plant.orbitalPeriod}", style: AppStyles.bold16White),
                    Text("Radius (km) : ${plant.raduis}", style: AppStyles.bold16White),
                    Text("Mass (kg) : ${plant.mass}", style: AppStyles.bold16White),
                    Text("Gravity (m/s²) : ${plant.gravity}", style: AppStyles.bold16White),
                    Text("Surface Area (km²) : ${plant.surfaceArea}", style: AppStyles.bold16White),
                  ],
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
