import 'package:ecommerce/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeData.lightthemedata,
      darkTheme: AppThemeData.darkthemedata,
      themeMode: ThemeMode.system,
    );
  }
}
