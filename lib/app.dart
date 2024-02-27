import 'package:flutter/material.dart';
import 'package:flutter_project/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter_project/utils/theme/theme.dart';
import 'package:get/get_navigation/get_navigation.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.DarkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
