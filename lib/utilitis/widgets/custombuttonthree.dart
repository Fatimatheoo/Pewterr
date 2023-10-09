import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../colors.dart';

class CustomButtonThree extends StatelessWidget {
  CustomButtonThree({this.onTap,
    required this.text});
  final VoidCallback? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    // CartProvider cartProvider = Provider.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 155,
        height: 37,
        decoration: BoxDecoration(
          color: AppTheme.buttonColor,
          borderRadius: BorderRadius.circular(5),
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
