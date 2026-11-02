import 'package:flutter/material.dart';
import 'package:space/core/app_assets.dart';
import 'package:space/core/app_colors.dart';
import 'package:space/core/app_routes.dart';
import 'package:space/core/app_styles.dart';
import 'package:space/models/planet_model.dart';
import 'package:space/screens/widgets/button_widget.dart';
import 'package:space/screens/widgets/header_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          HeaderWidget(
            header: "Explore",
            title: "Which planet \nwould you like to explore?",
          ),
          Expanded(
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (value) {
                currentIndex = value;
                setState(() {});
              },
              itemBuilder: (context, index) {
                return Image.asset(PlanetModel.planets[index].image);
              },
              itemCount: PlanetModel.planets.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    pageController.previousPage(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeIn,
                    );
                  },
                  icon: Icon(Icons.arrow_back),
                  style: IconButton.styleFrom(
                    backgroundColor: AppColors.red,
                    foregroundColor: AppColors.white,
                  ),
                ),
                Text(
                  PlanetModel.planets[currentIndex].name,
                  style: AppStyles.bold24White,
                ),
                IconButton(
                  onPressed: () {
                    pageController.nextPage(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeIn,
                    );
                  },
                  icon: Icon(Icons.arrow_forward),
                  style: IconButton.styleFrom(
                    backgroundColor: AppColors.red,
                    foregroundColor: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 22, top: 28),
            child: ButtonWidget(
              text: "Explore ${PlanetModel.planets[currentIndex].name}",
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.details,
                  arguments: PlanetModel.planets[currentIndex],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
