import 'package:brewberry_cafe/bottom_navigation/bottom_nav.dart';
import 'package:brewberry_cafe/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeDesinge.lightTheme,
      darkTheme: ThemeDesinge.darkTheme,
      home: const BottomNav(),
    );
  }
}