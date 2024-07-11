import 'package:flutter/material.dart';

class Buttons {
  Widget toolbarButton(String title, String imageName, VoidCallback onPressed) {
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
