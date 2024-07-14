import 'package:flutter/material.dart';
import '../../../resources/colors.dart';

class BottomPaneSwitchButton extends StatelessWidget {
  final bool isChecked;
  final VoidCallback onPressed;

  const BottomPaneSwitchButton({super.key, required this.isChecked, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(
            colors: isChecked
                ? [AppColors.green.withOpacity(0.3), AppColors.darkGreen.withOpacity(0.3)]
                : [AppColors.green, AppColors.darkGreen],
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
            padding: const EdgeInsets.all(10.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                isChecked ? Icons.check : Icons.check_box_outline_blank,
                color: Colors.white,
                size: 16,
              ),
              const SizedBox(width: 15),
              const Text(
                'This match is active',
                style: TextStyle(fontSize: 11, color: AppColors.primary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
