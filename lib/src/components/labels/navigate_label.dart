// lib/custom_label.dart

import 'package:flutter/material.dart';
import '../../resources/colors.dart';

class NavigateLabel extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;

  const NavigateLabel({
    super.key,
    required this.title,
    this.backgroundColor = AppColors.darkerGrey,
    this.textColor = AppColors.lightGrey,
    this.borderRadius = 15.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(borderRadius),
          topRight: Radius.circular(borderRadius),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 11, color: textColor),
        ),
      ),
    );
  }
}
