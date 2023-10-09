import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../colors.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.onTap,
    required this.text});
  final VoidCallback? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    // CartProvider cartProvider = Provider.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 376,
        height: 60,
        decoration: BoxDecoration(
          color: AppTheme.buttonColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '$text',
              style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),)
          ],
        ),
      ),
    );
  }
}
