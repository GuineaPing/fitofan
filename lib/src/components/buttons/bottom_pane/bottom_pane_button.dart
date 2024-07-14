import 'package:flutter/material.dart';
import '../../../resources/colors.dart';

class BottomPaneButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const BottomPaneButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
            colors: [AppColors.green, AppColors.darkGreen],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.transparent, width: 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.all(5.0),
          ),
          child: Text(
            text,
            style: const TextStyle(fontSize: 11, color: AppColors.primary),
          ),
        ),
      ),
    );
  }
}
