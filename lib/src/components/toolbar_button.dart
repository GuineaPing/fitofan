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
        icon: SizedBox(width: 18, height: 18, child: Image.asset(imagePath)),
        label: Text(
          title,
          style: const TextStyle(fontSize: 14, fontFamily: 'Roboto-Medium'),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
