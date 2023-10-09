import 'package:flutter/material.dart';
import '../colors.dart';
import '../textstyles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.textEditingController,
    super.key, required this.text,
  });
  final String text;
  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 376,
      decoration: BoxDecoration(
        color: AppTheme.bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: '${text}',
            hintStyle: T2textStyle
        ),
        style: TextStyle(fontSize: 15, color: AppTheme.white),
      ),
    );
  }
}