import 'package:flutter/material.dart';
import 'package:portfolio_website/representation/home/home_view.dart';
import 'package:portfolio_website/router.dart';
import 'package:portfolio_website/theme.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
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
      title: 'Magdy Yacoub',
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      onGenerateRoute: _appRouter.generateRoute,
      themeMode: ThemeMode.dark,
      themeAnimationDuration: const Duration(milliseconds: 700),
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      home: const HomeView(),
    );
  }
}
