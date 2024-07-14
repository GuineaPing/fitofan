import 'package:flutter/material.dart';
import '../../resources/colors.dart';

// Define the WinnerBadge widget
class WinnerBadge extends StatelessWidget {
  final String title;

  const WinnerBadge({super.key, this.title = 'Winner'});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        gradient: const LinearGradient(
          colors: [AppColors.lightOrange, AppColors.darkOrange],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(fontSize: 11, color: AppColors.brown),
      ),
    );
  }
}
