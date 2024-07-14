import 'package:flutter/material.dart';
import '../buttons/bottom_pane/bottom_pane_button.dart';
import '../buttons/bottom_pane/bottom_pane_switch_button.dart';

class BottomPaneLeft extends StatelessWidget {
  final bool isChecked;
  final VoidCallback onToggle;

  const BottomPaneLeft({super.key, required this.isChecked, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: MediaQuery.of(context).size.width * 0.3, // 30% of the container width
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomPaneSwitchButton(
            title: 'This match is active',
            isChecked: isChecked,
            onPressed: onToggle,
          ),
          const SizedBox(height: 10),
          BottomPaneButton(
            text: 'Save results',
            onPressed: () {
              // Add your onPressed code here!
            },
          ),
          const SizedBox(height: 10),
          BottomPaneButton(
            text: 'Show result on screen',
            onPressed: () {
              // Add your onPressed code here!
            },
          ),
        ],
      ),
    );
  }
}
