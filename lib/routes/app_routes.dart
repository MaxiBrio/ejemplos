import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../eje1/page_main.dart';
import '../eje2/page_main.dart';

class AppRoutes {
  static const String initialRoute = '/';

  static Map<String, WidgetBuilder> routes = {
    '/': (context) => const HomeScreen(),
    '/ejemplo1': (context) => PageMainExample(),
    '/ejemplo2': (context) => PageMainExample2(),
  };

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(), // Página por defecto
    );
  }
}
