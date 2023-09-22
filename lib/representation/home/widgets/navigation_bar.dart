import 'package:flutter/material.dart';
import 'package:portfolio_website/styles/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// Navigation bar
class MyNavigationBar extends StatelessWidget {
  /// Creates the [MyNavigationBar]
  const MyNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      left: 0,
      top: 0,
      child: ColoredBox(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 50,
            top: 10,
            bottom: 5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'images/brand_logo_only.png',
                fit: BoxFit.cover,
                width: 9.sw,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const _NavBarItem(title: 'Intro'),
                  SizedBox(width: 3.5.sw),
                  const _NavBarItem(title: 'About'),
                  SizedBox(width: 3.5.sw),
                  const _NavBarItem(title: 'Projects'),
                  SizedBox(width: 3.5.sw),
                  const _NavBarItem(title: 'Testimonials'),
                  SizedBox(width: 3.5.sw),
                  const _NavBarItem(title: "Let's chat"),
                ],
              ),
            ],
          ),
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
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.displayMedium!.copyWith(
            color: Colors.white,
            fontSize: 3.sw,
          ),
    );
  }
}
