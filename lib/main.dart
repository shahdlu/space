import 'package:flutter/material.dart';
import 'package:space/screens/detail_screen.dart';
import 'package:space/screens/home_screen.dart';
import 'package:space/screens/inroduction_screen.dart';

import 'core/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.introduction,
      routes: {
        AppRoutes.introduction : (context) => IntroductionScreen(),
        AppRoutes.home : (context) => HomeScreen(),
        AppRoutes.details : (context) => DetailScreen(),
      },
    );
  }
}