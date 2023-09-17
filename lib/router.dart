import 'package:flutter/material.dart';
import 'package:portfolio_website/representation/home/home_view.dart';

/// Contains constants for app screen paths
class ScreenPaths {
  /// Splash screen path
  static const String splash = '/';

  /// Intro screen path
  static const String intro = '/welcome';

  /// Home screen path
  static const String home = '/home';
}

/// Used to manage routes in the app
class AppRouter {
  /// Used to generate routs
  Route<MaterialPageRoute<void>> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ScreenPaths.home:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );
      default:
        return MaterialPageRoute(builder: (_) => const HomeView());
    }
  }
}
