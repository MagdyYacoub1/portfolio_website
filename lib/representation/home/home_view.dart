import 'package:flutter/material.dart';
import 'package:portfolio_website/representation/home/widgets/background_layer.dart';
import 'package:portfolio_website/representation/home/widgets/content_layer.dart';
import 'package:portfolio_website/representation/home/widgets/navigation_bar.dart';

/// Home View
class HomeView extends StatelessWidget {
  ///Creates the [HomeView]
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Stack(
            children: [
              ContentLayer(),
            ],
          ),
          MyNavigationBar(),
        ],
      ),
    );
  }
}
