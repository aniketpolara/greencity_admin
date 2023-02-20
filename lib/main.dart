import 'package:flutter/material.dart';
import 'package:greencity/screens/bottom_navigation_bar/bottom_navigation_bar.dart';

main() {
  runApp(
    const MaterialApp(
      home: BottomNavigationBarPage(),
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.from(colorScheme: const ColorScheme.light(),).copyWith(
      //     pageTransitionsTheme: const PageTransitionsTheme(
      //         builders: <TargetPlatform, PageTransitionsBuilder>{
      //       TargetPlatform.android: ZoomPageTransitionsBuilder()
      //     },),),
    ),
  );
}
