import 'package:flutter/material.dart';
import '../colors.dart';

class CustomSelectedButton extends StatelessWidget {
  final VoidCallback? ontap;
  final style;
  final String text;

  const CustomSelectedButton({
    super.key,
    required this.ontap,
    required this.style,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: ontap,
        child: Text('${text}',
            style: TextStyle(fontFamily: 'Font2',fontSize: 14,fontWeight: FontWeight.normal,
                color: AppTheme.fontdimColor)),
        style: style );
  }
}