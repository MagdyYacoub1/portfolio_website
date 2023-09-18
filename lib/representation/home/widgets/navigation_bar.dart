import 'package:flutter/material.dart';
import 'package:portfolio_website/styles/colors.dart';

/// Navigation bar
class MyNavigationBar extends StatelessWidget {
  /// Creates the [MyNavigationBar]
  const MyNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.seedColor,
      height: 50,
      child: const Padding(
        padding: EdgeInsets.only(left: 30, right: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Placeholder(
              fallbackWidth: 50,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _NavBarItem(title: 'Intro'),
                SizedBox(width: 50),
                _NavBarItem(title: 'About'),
                SizedBox(width: 50),
                _NavBarItem(title: 'Projects'),
                SizedBox(width: 50),
                _NavBarItem(title: 'Testimonials'),
                SizedBox(width: 50),
                _NavBarItem(title: "Let's get in touch"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  const _NavBarItem({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}
