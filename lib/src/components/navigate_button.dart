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
      width: 280,
      height: 76,
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
              size: 16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(title),
          ),
          Visibility(
            visible: !isBack,
            child: const Icon(
              Icons.arrow_forward,
              size: 16,
            ),
          ),
          const Spacer()
        ]),
      ),
    );
  }
}
