import 'package:flutter/material.dart';
import 'package:assignment_fitofan/src/resources/colors.dart';

class CompetitorButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const CompetitorButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
            side: const BorderSide(color: AppColors.primary, width: 0.25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
            padding: const EdgeInsets.only(left: 22, right: 22)),
        child: Text(
          title,
          style: const TextStyle(color: AppColors.primary, fontSize: 10),
        ),
      ),
    );
  }
}
