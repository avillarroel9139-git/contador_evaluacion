import 'package:flutter/material.dart';
import '../../screens/home_screen.dart';
import '../../screens/info_screen.dart';

class AppRouter {
  static const String initialRoute = '/home';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      '/home': (BuildContext context) => const HomeScreen(),
      '/info': (BuildContext context) => const InfoScreen(),
    };
  }
}
