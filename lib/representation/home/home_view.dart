import 'package:flutter/material.dart';
import 'package:portfolio_website/representation/home/widgets/background_layer.dart';
import 'package:portfolio_website/representation/home/widgets/content_layer.dart';
import 'package:portfolio_website/representation/home/widgets/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// Home View
class HomeView extends StatelessWidget {
  ///Creates the [HomeView]
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, info) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          endDrawer: info.isMobile ? const Drawer() : null,
          appBar: info.isMobile
              ? AppBar(backgroundColor: Colors.transparent)
              : null,
          body: Stack(
            alignment: Alignment.topCenter,
            children: [
              const Stack(
                children: [
                  ContentLayer(),
                ],
              ),
              if (!info.isMobile) const MyNavigationBar(),
            ],
          ),
        );
      },
    );
  }
}
