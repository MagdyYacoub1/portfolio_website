import 'package:flutter/material.dart';
import 'package:portfolio_website/representation/home/widgets/background_layer.dart';
import 'package:portfolio_website/representation/home/widgets/content_layer.dart';
import 'package:portfolio_website/representation/home/widgets/navigation_bar.dart';
import 'package:portfolio_website/styles/colors.dart';
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
          //endDrawer: info.isMobile ? MyDrawer() : null,
          appBar: info.isMobile ? const MyAppBar() : null,
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

/// Drawer show up on small screens
class MyDrawer extends StatelessWidget {
  /// My Drawer
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.bgColor,
      width: 70.sw,
      child: const Column(),
    );
  }
}

/// AppBar widget Appears on small screen devices
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// My AppBar
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: false,
      title: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          bottom: 10,
        ),
        child: Image.asset(
          'images/brand_logo_only.png',
          fit: BoxFit.cover,
          width: 12.sw,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(6.sh);
}
