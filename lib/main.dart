import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/representation/home/home_view.dart';
import 'package:portfolio_website/router.dart';
import 'package:portfolio_website/theme.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(),
    ),
  );
}

/// Root widget
class MyApp extends StatelessWidget {
  /// Attach the widget to the widget tree
  MyApp({super.key}) : _appRouter = AppRouter();

  /// AppRouter to handle navigation around the app
  final AppRouter _appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Magdy Yacoub',
      onGenerateRoute: _appRouter.generateRoute,
      themeMode: ThemeMode.dark,
      themeAnimationDuration: const Duration(milliseconds: 700),
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      home: const HomeView(),
    );
  }
}
