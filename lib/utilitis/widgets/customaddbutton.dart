import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:my_first_app/utilitis/colors.dart';

class CustomAddButton extends StatelessWidget {
  final VoidCallback ontap;

  const CustomAddButton({
    super.key,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: DottedBorder(
        color: Colors.white,
        strokeWidth: 2,
        dashPattern: [
          5,
          5,
        ],
        child: Container(
          padding: const EdgeInsets.all(
              16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
          ),
          child: Icon(Icons.add,size: 50,color: AppTheme.white,)
        ),
      )
    );
  }
}