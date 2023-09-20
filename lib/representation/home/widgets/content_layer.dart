import 'package:flutter/material.dart';
import 'package:portfolio_website/representation/home/widgets/intro_section.dart';

///
class ContentLayer extends StatelessWidget {
  ///
  const ContentLayer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: const IntroSection(),
          ),
          Container(
            height: size.height,
            color: Colors.blue.withOpacity(0.5),
          ),
          Container(
            height: size.height,
            color: Colors.green.withOpacity(0.5),
          ),
          Container(
            height: size.height,
            color: Colors.amber.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
