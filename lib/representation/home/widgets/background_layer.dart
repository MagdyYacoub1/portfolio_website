import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

///
class BackgroundLayer extends StatelessWidget {
  ///
  const BackgroundLayer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
      top: 0,
      right: -size.width * 0.06,
      bottom: size.height * 0.3,
      child: Image.asset(
        'assets/images/black-hole2.jpg',
        fit: BoxFit.cover,
        color: Colors.black54,
        colorBlendMode: BlendMode.darken,
      ),
    );
  }
}
