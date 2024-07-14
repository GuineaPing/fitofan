import 'package:flutter/material.dart';
import 'package:assignment_fitofan/src/resources/colors.dart';

class NavigateButton extends StatelessWidget {
  final String title;
  final bool isBack;
  final VoidCallback onPressed;

  const NavigateButton({
    super.key,
    required this.title,
    required this.isBack,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: AppColors.primary,
          backgroundColor: AppColors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(children: [
          const Spacer(),
          Visibility(
            visible: isBack,
            child: const Icon(
              Icons.arrow_back,
              size: 15,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Text(
              title,
              style: const TextStyle(fontSize: 11),
            ),
          ),
          Visibility(
            visible: !isBack,
            child: const Icon(
              Icons.arrow_forward,
              size: 15,
            ),
          ),
          const Spacer()
        ]),
      ),
    );
  }
}
