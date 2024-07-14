import 'package:flutter/material.dart';
import 'package:assignment_fitofan/src/resources/colors.dart';

class CommandButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const CommandButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: AppColors.primary,
          backgroundColor: AppColors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Text(
            title,
            style: const TextStyle(fontSize: 10),
          ),
        ),
      ),
    );
  }
}
