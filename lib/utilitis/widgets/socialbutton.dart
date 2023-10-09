import 'package:flutter/material.dart';
import '../colors.dart';
import '../sizes.dart';

class socialButton extends StatelessWidget {
  const socialButton({
    required this.icon,
    super.key,
  });
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: ScreenWidth(context) * 0.25,
      height: 50,
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(icon),
    );
  }
}