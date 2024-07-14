import 'package:flutter/material.dart';

class ToolbarButton extends StatelessWidget {
  final String title;
  final String imageName;
  final VoidCallback onPressed;

  const ToolbarButton({
    super.key,
    required this.title,
    required this.imageName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    String imagePath = 'assets/images/icons/$imageName.png';
    return Center(
      child: TextButton.icon(
        icon: SizedBox(width: 14, height: 14, child: Image.asset(imagePath)),
        label: Text(
          title,
          style: const TextStyle(fontSize: 11),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
