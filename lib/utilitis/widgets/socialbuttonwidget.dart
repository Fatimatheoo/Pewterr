import 'package:flutter/material.dart';
import 'package:my_first_app/utilitis/widgets/socialbutton.dart';

import '../icons.dart';

class socialButtonWidget extends StatelessWidget {
  const socialButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        socialButton(icon: AppIcon.apple),
        socialButton(icon: AppIcon.google),
        socialButton(icon: AppIcon.facebook),
      ],
    );
  }
}

