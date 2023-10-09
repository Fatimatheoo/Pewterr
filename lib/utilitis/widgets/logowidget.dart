import 'package:flutter/material.dart';

import '../images.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 100,
      child: Image.asset(AppImages.logo),
    );
  }
}
