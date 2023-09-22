import 'package:flutter/material.dart';
import 'package:portfolio_website/representation/home/widgets/background_layer.dart';
import 'package:responsive_builder/responsive_builder.dart';

///
class IntroSection extends StatelessWidget {
  ///
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const BackgroundLayer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width * 0.7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, I'm Magdy Yacoub",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(color: Colors.white, fontSize: 8.sw),
                    ),
                    Text(
                      "I'm a software Engineer",
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall!
                          .copyWith(color: Colors.white, fontSize: 6.sw),
                    ),
                    SizedBox(height: 2.sh),
                    Text(
                      '''I'm interested in open-source\nand application development.''',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: Colors.white54, fontSize: 5.sw),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
