import 'package:flutter/material.dart';
import 'package:flutter_crm/routes/route_generator.dart';
import 'package:flutter_crm/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter CRM',
      theme: ThemeData(primarySwatch: Colors.indigo),
      initialRoute: AppRoutes.splash,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
// This is the main entry point of the Flutter CRM application.
// It initializes the app with a MaterialApp widget, sets the theme, and defines the initial route.
// The app uses a custom RouteGenerator to handle navigation between different screens.