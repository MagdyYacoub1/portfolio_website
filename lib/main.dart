import 'package:flutter/material.dart';
import 'package:portfolio_website/representation/home/home_view.dart';
import 'package:portfolio_website/router.dart';

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
      title: 'Portfolio',
      darkTheme: ThemeData.dark(),
      onGenerateRoute: _appRouter.generateRoute,
      themeMode: ThemeMode.dark,
      themeAnimationDuration: const Duration(milliseconds: 700),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
