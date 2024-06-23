import 'package:ecommerce/features/onboarding/onbarding.dart';
import 'package:ecommerce/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppThemeData.lightthemedata,
      darkTheme: AppThemeData.darkthemedata,
      themeMode: ThemeMode.system,
      home: const OnBoardingScreen(),
    );
  }
}