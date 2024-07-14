import 'package:flutter/material.dart';

class CompetitorMenuButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CompetitorMenuButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 35,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white.withOpacity(0.1),
          side: const BorderSide(color: Colors.transparent, width: 0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          padding: const EdgeInsets.all(2.0),
        ),
        child: const Icon(
          Icons.more_vert,
          color: Colors.white,
          size: 22,
        ),
      ),
    );
  }
}
