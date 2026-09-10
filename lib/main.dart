import 'package:evently/core/theme/app_theme.dart';
import 'package:evently/screens/Home_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EventlyApp());
}

class EventlyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: {HomeScreen.routeName:(_) => HomeScreen()},
      initialRoute: HomeScreen.routeName,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: .light,
    );
}
}

