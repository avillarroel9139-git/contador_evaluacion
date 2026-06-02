import 'package:flutter/material.dart';
import 'config/router/app_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App de Racha',

      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color.fromARGB(255, 0, 0, 0),
      ),

      initialRoute: AppRouter.initialRoute,
      routes: AppRouter.getRoutes(),
    );
  }
}
